namespace Delivery
{
    partial class Form1
    {
        /// <summary>
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.testDataSet = new Delivery.TestDataSet();
            this.driverBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.driverTableAdapter = new Delivery.TestDataSetTableAdapters.DriverTableAdapter();
            this.fiodriverDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nomberdriverDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.telnumberdriverDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.testDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.driverBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.fiodriverDataGridViewTextBoxColumn,
            this.nomberdriverDataGridViewTextBoxColumn,
            this.telnumberdriverDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.driverBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(59, 31);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(351, 150);
            this.dataGridView1.TabIndex = 0;
            // 
            // testDataSet
            // 
            this.testDataSet.DataSetName = "TestDataSet";
            this.testDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // driverBindingSource
            // 
            this.driverBindingSource.DataMember = "Driver";
            this.driverBindingSource.DataSource = this.testDataSet;
            // 
            // driverTableAdapter
            // 
            this.driverTableAdapter.ClearBeforeFill = true;
            // 
            // fiodriverDataGridViewTextBoxColumn
            // 
            this.fiodriverDataGridViewTextBoxColumn.DataPropertyName = "fio_driver";
            this.fiodriverDataGridViewTextBoxColumn.HeaderText = "fio_driver";
            this.fiodriverDataGridViewTextBoxColumn.Name = "fiodriverDataGridViewTextBoxColumn";
            // 
            // nomberdriverDataGridViewTextBoxColumn
            // 
            this.nomberdriverDataGridViewTextBoxColumn.DataPropertyName = "nomber_driver";
            this.nomberdriverDataGridViewTextBoxColumn.HeaderText = "nomber_driver";
            this.nomberdriverDataGridViewTextBoxColumn.Name = "nomberdriverDataGridViewTextBoxColumn";
            // 
            // telnumberdriverDataGridViewTextBoxColumn
            // 
            this.telnumberdriverDataGridViewTextBoxColumn.DataPropertyName = "tel_number_driver";
            this.telnumberdriverDataGridViewTextBoxColumn.HeaderText = "tel_number_driver";
            this.telnumberdriverDataGridViewTextBoxColumn.Name = "telnumberdriverDataGridViewTextBoxColumn";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(596, 262);
            this.Controls.Add(this.dataGridView1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.testDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.driverBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private TestDataSet testDataSet;
        private System.Windows.Forms.BindingSource driverBindingSource;
        private TestDataSetTableAdapters.DriverTableAdapter driverTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn fiodriverDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn nomberdriverDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn telnumberdriverDataGridViewTextBoxColumn;
    }
}

