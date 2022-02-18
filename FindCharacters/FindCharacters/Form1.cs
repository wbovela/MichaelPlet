using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

namespace FindCharacters
{
    public partial class Form1 : Form
    {
        Label[] lblPixel;
        Label[] lblAddr;
        Label[] lblCode;

        byte[] Memory = new byte[65536];
        int CurrAddr = 0;

        public Form1()
        {
            InitializeComponent();
            this.BackColor = Color.Aquamarine;

            lblPixel = new System.Windows.Forms.Label[1152];
            lblAddr = new System.Windows.Forms.Label[18];
            lblCode = new System.Windows.Forms.Label[18];

            for (int Row = 0; Row <= 1; Row++)
            {
                int YOff = 100 + 200 * Row;

                for (int Column = 0; Column <= 8; Column++)
                {
                    int XOff = 100 + 100 * Column;

                    int Ix1 = Column + 9 * Row;

                    //intialize new label
                    lblAddr[Ix1] = new Label();
                    //lblAddr[Ix1].BackColor = Color.White;
                    //lblAddr[Ix1].Size = new System.Drawing.Size(8, 8);
                    lblAddr[Ix1].Location = new System.Drawing.Point(XOff, YOff-25);
                    lblAddr[Ix1].Text = "";
                    this.Controls.Add(lblAddr[Ix1]);

                    //intialize new label
                    lblCode[Ix1] = new Label();
                    //lblCode[Ix1].BackColor = Color.White;
                    //lblCode[Ix1].Size = new System.Drawing.Size(8, 8);
                    lblCode[Ix1].Location = new System.Drawing.Point(XOff+40, YOff + 70);
                    lblCode[Ix1].Text = "";
                    this.Controls.Add(lblCode[Ix1]);

                    for (int i = 0; i < 64; i++)
                    {
                        int j = i + 64 * Column + 576 * Row;
                        //intialize new label
                        lblPixel[j] = new Label();
                        lblPixel[j].BackColor = Color.White;
                        lblPixel[j].Size = new System.Drawing.Size(8, 8);
                        lblPixel[j].Location = new System.Drawing.Point(XOff + 8 * (i % 8), YOff + 8 * (i / 8));
                        lblPixel[j].Text = ""; //i.ToString();
                        this.Controls.Add(lblPixel[j]);
                    }
                }
                Label xx = lblPixel[500];
                xx.BackColor = Color.Maroon;
            }
        }

        private void mnuOpen_Click(object sender, EventArgs e)
        {
            cdcOpen.Filter = "PRG|*.prg";
            //if (cdcOpen.ShowDialog() != DialogResult.Cancel)
            cdcOpen.ShowDialog();
            if (cdcOpen.FileName != "") Read_File(cdcOpen.FileName);
        }

        private void Read_File(string FileName)
        {
            long StartAddr;
            long EndAddr;

            byte byt;
            long Address;

            FileInfo f = new FileInfo(FileName);

            //MessageBox.Show(FileName);
            FileStream fs = new FileStream(FileName, FileMode.Open);
            BinaryReader br = new BinaryReader(fs);

            byt = br.ReadByte();
            Address = byt;

            byt = br.ReadByte();
            Address = Address + 256*byt;

            StartAddr = Address;
            EndAddr = StartAddr + f.Length - 3;

            for (Address = StartAddr; Address <= EndAddr; Address++)
            {
                byt = br.ReadByte();

                if (Address <= 65535) Memory[Address] = byt;
            }

            MessageBox.Show(StartAddr.ToString() + "  " + EndAddr.ToString());

            br.Close();
            fs.Close();

            this.Text = "Char Finder - " + cdcOpen.FileName + "  " + Dec2Hex(StartAddr, 4) + "-" + Dec2Hex(EndAddr, 4);

            hsbAddr.Minimum = (int) StartAddr / 8;
            hsbAddr.Maximum = (int) EndAddr / 8 - 8;
            hsbAddr.Value = hsbAddr.Minimum;

            Show_Characters();
        }

        private void Show_Characters()
        {
            CurrAddr = 8 * hsbAddr.Value + hsbOffset.Value;

            Show_Char();
        }

        private void Show_Char()
        {
            Color BC1;
            Color BC2;
            Color BC3;
            Color BC4;

            lblBank.Text = "Bank:  " + CurrAddr / 16384;

            for (int k = 0; k <= 8; k++)
            {
                if (k == 4)
                {
                    BC1 = Color.White;
                    BC2 = Color.Black;
                    BC3 = Color.Red;
                    BC4 = Color.Cyan;
                }
                else
                {
                    BC1 = Color.FromArgb(224,224,224);
                    BC2 = Color.FromArgb(96, 96, 96);
                    BC3 = Color.FromArgb(224, 96, 96);
                    BC4 = Color.FromArgb(96, 224, 224);
                }

                lblAddr[k].Text = Dec2Hex(CurrAddr + 8 * k, 4);
                lblCode[k].Text = Dec2Hex(((CurrAddr + 8 * k) / 8) % 256, 2);

                for (int i = 0; i <= 7; i++)
                {
                    for (int j = 0; j <= 7; j++)
                    {
                        if ((Memory[CurrAddr + 8 * k + i] & (int)Math.Pow(2, j)) == 0)
                            lblPixel[64 * k + 8 * i + (7 - j)].BackColor = BC1;
                        else
                            lblPixel[64 * k + 8 * i + (7 - j)].BackColor = BC2;
                    }
                }

                lblAddr[k + 9].Text = (CurrAddr + 8 * k).ToString();
                lblCode[k + 9].Text = (((CurrAddr + 8 * k) / 8) % 256).ToString();

                for (int i = 0; i <= 7; i++)
                {
                    for (int j = 0; j <= 6; j = j + 2)
                    {
                        if ((Memory[CurrAddr + 8 * k + i] & (int)Math.Pow(2, j)) == 0)
                        {
                            if ((Memory[CurrAddr + 8 * k + i] & (int)Math.Pow(2, j + 1)) == 0)
                            {
                                lblPixel[64 * (k + 9) + 8 * i + (7 - j)].BackColor = BC1;
                                lblPixel[64 * (k + 9) + 8 * i + (6 - j)].BackColor = BC1;
                            }
                            else
                            {
                                lblPixel[64 * (k + 9) + 8 * i + (7 - j)].BackColor = BC3;
                                lblPixel[64 * (k + 9) + 8 * i + (6 - j)].BackColor = BC3;
                            }
                        }
                        else
                        {
                            if ((Memory[CurrAddr + 8 * k + i] & (int)Math.Pow(2, j + 1)) == 0)
                            {
                                lblPixel[64 * (k + 9) + 8 * i + (7 - j)].BackColor = BC4;
                                lblPixel[64 * (k + 9) + 8 * i + (6 - j)].BackColor = BC4;
                            }
                            else
                            {
                                lblPixel[64 * (k + 9) + 8 * i + (7 - j)].BackColor = BC2;
                                lblPixel[64 * (k + 9) + 8 * i + (6 - j)].BackColor = BC2;
                            }
                        }
                    }
                }
            }
        }

        private string Dec2Hex(long Dec, int HexLen)
        {

            string HexVal = "0000" + Dec.ToString("X");
            // Implementation of Right$
            return HexVal.Substring(HexVal.Length - HexLen) ;
        }

        private void hsbAddr_ValueChanged(object sender, EventArgs e)
        {
            Show_Characters();
        }

        private void hsbAddr_Scroll(object sender, ScrollEventArgs e)
        {
            Show_Characters();
        }

        private void hsbOffset_ValueChanged(object sender, EventArgs e)
        {
            lblOffset.Text = hsbOffset.Value.ToString();

            Show_Characters();
        }
    }
}
