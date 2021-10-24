using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ZadatakRadnici.Models;

namespace ZadatakRadnici.Ostalo
{
    public class PovezivanjeBaza
    {
        string connString = PovezivanjeSaBazom.KonekcioniString();

        public void DodatiRadnika(Radnik radnik)
        {
            SqlConnection conn = new SqlConnection(connString);
            SqlCommand kreiraj = new SqlCommand("uspDodavanjeRadnika", conn);
            kreiraj.CommandType = CommandType.StoredProcedure;
            kreiraj.Parameters.AddWithValue("@Ime", radnik.Ime);
            kreiraj.Parameters.AddWithValue("@Prezime", radnik.Prezime);
            kreiraj.Parameters.AddWithValue("@Adresa", radnik.Adresa);
            kreiraj.Parameters.AddWithValue("@NetoIznos", radnik.NetoIznos);

            conn.Open();
            kreiraj.ExecuteNonQuery();
            conn.Close();
        }

        public void IzmeniRadnika(Radnik radnik)
        {
            SqlConnection conn = new SqlConnection(connString);
            SqlCommand izmeni = new SqlCommand("uspIzmeni", conn);
            izmeni.CommandType = CommandType.StoredProcedure;
            izmeni.Parameters.AddWithValue("@Id", radnik.Id);
            izmeni.Parameters.AddWithValue("@Ime", radnik.Ime);
            izmeni.Parameters.AddWithValue("@Prezime", radnik.Prezime);
            izmeni.Parameters.AddWithValue("@Adresa", radnik.Adresa);
            izmeni.Parameters.AddWithValue("@NetoIznos", radnik.NetoIznos);

            conn.Open();
            izmeni.ExecuteNonQuery();
            conn.Close();
        }

        public DataSet PrikaziRadnika(int id)
        {
            SqlConnection conn = new SqlConnection(connString);
            SqlCommand prikazi = new SqlCommand("uspPrikaziRadnika", conn);
            prikazi.CommandType = CommandType.StoredProcedure;
            prikazi.Parameters.AddWithValue("@Id", id);
            SqlDataAdapter adapter = new SqlDataAdapter(prikazi);
            DataSet dataSet = new DataSet();
            adapter.Fill(dataSet);
            return dataSet;
        }

        public DataSet PrikaziSve()
        {
            SqlConnection conn = new SqlConnection(connString);
            SqlCommand prikaziSve = new SqlCommand("uspPrikaziSve", conn);
            prikaziSve.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adapter = new SqlDataAdapter(prikaziSve);
            DataSet dataSet = new DataSet();
            adapter.Fill(dataSet);
            return dataSet;
        }

        public void ObrisiRadnika(int id)
        {
            SqlConnection conn = new SqlConnection(connString);
            SqlCommand obrisi = new SqlCommand("uspIzbrisatiRadnika", conn);
            obrisi.CommandType = CommandType.StoredProcedure;
            obrisi.Parameters.AddWithValue("@Id", id);

            conn.Open();
            obrisi.ExecuteNonQuery();
            conn.Close();
        }
    }
}