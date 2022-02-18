namespace FindCharacters
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.mnuFile = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuOpen = new System.Windows.Forms.ToolStripMenuItem();
            this.cdcOpen = new System.Windows.Forms.OpenFileDialog();
            this.hsbAddr = new System.Windows.Forms.HScrollBar();
            this.hsbOffset = new System.Windows.Forms.HScrollBar();
            this.lblBank = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.lblOffset = new System.Windows.Forms.Label();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuFile});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1021, 24);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // mnuFile
            // 
            this.mnuFile.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuOpen});
            this.mnuFile.Name = "mnuFile";
            this.mnuFile.Size = new System.Drawing.Size(37, 20);
            this.mnuFile.Text = "File";
            // 
            // mnuOpen
            // 
            this.mnuOpen.Name = "mnuOpen";
            this.mnuOpen.Size = new System.Drawing.Size(115, 22);
            this.mnuOpen.Text = "Open ...";
            this.mnuOpen.Click += new System.EventHandler(this.mnuOpen_Click);
            // 
            // hsbAddr
            // 
            this.hsbAddr.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.hsbAddr.LargeChange = 4;
            this.hsbAddr.Location = new System.Drawing.Point(9, 409);
            this.hsbAddr.Name = "hsbAddr";
            this.hsbAddr.Size = new System.Drawing.Size(615, 17);
            this.hsbAddr.TabIndex = 1;
            this.hsbAddr.Scroll += new System.Windows.Forms.ScrollEventHandler(this.hsbAddr_Scroll);
            this.hsbAddr.ValueChanged += new System.EventHandler(this.hsbAddr_ValueChanged);
            // 
            // hsbOffset
            // 
            this.hsbOffset.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.hsbOffset.LargeChange = 1;
            this.hsbOffset.Location = new System.Drawing.Point(981, 409);
            this.hsbOffset.Maximum = 7;
            this.hsbOffset.Name = "hsbOffset";
            this.hsbOffset.Size = new System.Drawing.Size(31, 17);
            this.hsbOffset.TabIndex = 2;
            this.hsbOffset.ValueChanged += new System.EventHandler(this.hsbOffset_ValueChanged);
            // 
            // lblBank
            // 
            this.lblBank.Location = new System.Drawing.Point(29, 44);
            this.lblBank.Name = "lblBank";
            this.lblBank.Size = new System.Drawing.Size(100, 23);
            this.lblBank.TabIndex = 3;
            this.lblBank.Text = "Bank:";
            // 
            // label1
            // 
            this.label1.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(772, 409);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(38, 13);
            this.label1.TabIndex = 4;
            this.label1.Text = "Offset:";
            // 
            // lblOffset
            // 
            this.lblOffset.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
            this.lblOffset.AutoSize = true;
            this.lblOffset.Location = new System.Drawing.Point(836, 409);
            this.lblOffset.Name = "lblOffset";
            this.lblOffset.Size = new System.Drawing.Size(13, 13);
            this.lblOffset.TabIndex = 5;
            this.lblOffset.Text = "0";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1021, 435);
            this.Controls.Add(this.lblOffset);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lblBank);
            this.Controls.Add(this.hsbOffset);
            this.Controls.Add(this.hsbAddr);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "Form1";
            this.Text = "Form1";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem mnuFile;
        private System.Windows.Forms.ToolStripMenuItem mnuOpen;
        private System.Windows.Forms.OpenFileDialog cdcOpen;
        private System.Windows.Forms.HScrollBar hsbAddr;
        private System.Windows.Forms.HScrollBar hsbOffset;
        private System.Windows.Forms.Label lblBank;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lblOffset;
    }
}

