using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ORMPrac1
{
    public partial class Form1 : Form
    {
        public List<model.ALUMNO> oALUMNO;
        public List<model.APODERADO> oAPODERADO;
        public List<model.CURSO> oCURSO;
        public List<model.INSCRITO> oINSCRITO;
        int indice = 0;

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
       
        }
        
            
        public void Llenar()
        {
            if (indice < 0) ;
            indice = 0;
            string cadena = "";
            switch (comboBox1.SelectedIndex)
            {
                case 0:
                    if (indice > oALUMNO.Count)
                        indice = oALUMNO.Count - 1;
                    cadena = oALUMNO[indice].Id.ToString() + "." + oALUMNO[indice].Nombre + ",DE" + oALUMNO[indice].Ciudad + "," + oALUMNO[indice].Edad + "AÑOS";
                    break;
                case 1:
                    if (indice > oAPODERADO.Count)
                        indice = oAPODERADO.Count - 1;
                    using (model.DBPrac1Entities db = new model.DBPrac1Entities())
                    {
                        oALUMNO = db.ALUMNO.ToList();
                        cadena = oAPODERADO[indice].Id.ToString() + "," + oAPODERADO[indice].Nombre + "es el o la apoderada de " + oALUMNO.Find(a => a.Id == (int)oAPODERADO[indice].Id_alumno).Nombre;    

                    }
                    break;
                case 2:
                    if (indice > oCURSO.Count)
                        indice = oCURSO.Count - 1;
                    break;
                case 3:
                    if (indice >= oINSCRITO.Count)

                        indice = oINSCRITO.Count - 1;
                    break;







                         





            }

            textBox1.Text = cadena;
        }
        


        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (model.DBPrac1Entities db = new model.DBPrac1Entities())
            {
                switch (comboBox1.SelectedIndex)
                {
                    case 0:
                oALUMNO = db.ALUMNO.ToList();
                break;
                    case 1:
                     oAPODERADO = db.APODERADO.ToList();
                        break;

                    case 2:
                    oCURSO = db.CURSO.ToList();
                        break;
                    case 3:
                    oINSCRITO = db.INSCRITO.ToList();
                break;
             }

            }


            indice = 0;
            Llenar();

        }
           
          
    

        private void Form1_load(object sender, EventArgs e)
        {
            //se llena la combobox//
            comboBox1.Items.Add("ALUMNO");
            comboBox1.Items.Add("APODERADO");
            comboBox1.Items.Add("CURSO");
            comboBox1.Items.Add("INSCRITO");

        }


        private void button1_Click(object sender, EventArgs e)
        {
            indice++;
            Llenar();


        }

        private void button2_Click(object sender, EventArgs e)
        {
            indice--;
            Llenar();

        }
    }
}
