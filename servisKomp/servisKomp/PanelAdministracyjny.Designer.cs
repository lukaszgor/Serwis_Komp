﻿namespace servisKomp
{
    partial class PanelAdministracyjny
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
            this.label1 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.button5 = new System.Windows.Forms.Button();
            this.button6 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 28.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.label1.Location = new System.Drawing.Point(256, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(670, 55);
            this.label1.TabIndex = 0;
            this.label1.Text = "PANEL ADMINISTRACYJNY";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(81, 163);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(212, 73);
            this.button1.TabIndex = 1;
            this.button1.Text = "Klienci";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(483, 163);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(212, 73);
            this.button2.TabIndex = 2;
            this.button2.Text = "Odbiór sprzętu";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(938, 163);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(212, 73);
            this.button3.TabIndex = 3;
            this.button3.Text = "Zgłoszenie usterki";
            this.button3.UseVisualStyleBackColor = true;
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(81, 369);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(212, 73);
            this.button4.TabIndex = 4;
            this.button4.Text = "Pracownicy";
            this.button4.UseVisualStyleBackColor = true;
            // 
            // button5
            // 
            this.button5.Location = new System.Drawing.Point(938, 369);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(212, 73);
            this.button5.TabIndex = 5;
            this.button5.Text = "Usterka";
            this.button5.UseVisualStyleBackColor = true;
            // 
            // button6
            // 
            this.button6.Location = new System.Drawing.Point(483, 369);
            this.button6.Name = "button6";
            this.button6.Size = new System.Drawing.Size(212, 73);
            this.button6.TabIndex = 6;
            this.button6.Text = "Sprzet";
            this.button6.UseVisualStyleBackColor = true;
            // 
            // PanelAdministracyjny
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1252, 700);
            this.Controls.Add(this.button6);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.label1);
            this.Name = "PanelAdministracyjny";
            this.Text = "PanelAdministracyjny";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Button button6;
    }
}