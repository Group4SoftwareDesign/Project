/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Evan Stimmel group 4
 */
public class Student {
    
    private int StudentID;
    private String Name;
    private String Address;
    private String City;
    private String State;
    private int ZipCode;
    private String PhoneNum;
    private String Email;
    private String VoiceOrPiano;
    private String Level;
    private String Gender;

    
     public Student() {
        this.StudentID = 0;
        this.Name = "";
        this.Address = "";
        this.City = "";
        this.State = "";
        this.ZipCode = 0;
        this.PhoneNum = "";
        this.Email = "";
        this.VoiceOrPiano = "";
        this.Level = "";
        this.Gender = "";
     }  
    public Student(int StudentID, String Name, String Address, String City, String State, int ZipCode, String PhoneNum, String Email, String VoiceOrPiano,String Level, String Gender) {
        this.StudentID = StudentID;
        this.Name = Name;
        this.Address = Address;
        this.City = City;
        this.State = State;
        this.ZipCode = ZipCode;
        this.PhoneNum = PhoneNum;
        this.Email = Email;
        this.VoiceOrPiano = VoiceOrPiano;
        this.Level = Level;
        this.Gender = Gender;
    }

    @Override
    public String toString() {
        return "student{" + "StudentID=" + StudentID + ", Name=" + Name + ", Address=" + Address + ", City=" + City + ", State=" + State + ", ZipCode=" + ZipCode + ", PhoneNum=" + PhoneNum + ", Email=" + Email + ", VoiceOrPiano=" + VoiceOrPiano + ", Level=" + Level + ", Gender=" + Gender + '}';
    }


    public int getStudentID() {
        return StudentID;
    }

    public void setStudentID(int StudentID) {
        this.StudentID = StudentID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String City) {
        this.City = City;
    }

    public String getState() {
        return State;
    }

    public void setState(String State) {
        this.State = State;
    }

    public int getZipCode() {
        return ZipCode;
    }

    public void setZipCode(int ZipCode) {
        this.ZipCode = ZipCode;
    }

    public String getPhoneNum() {
        return PhoneNum;
    }

    public void setPhoneNum(String PhoneNum) {
        this.PhoneNum = PhoneNum;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getVoiceOrPiano() {
        return VoiceOrPiano;
    }

    public void setVoiceOrPiano(String VoiceOrPiano) {
        this.VoiceOrPiano = VoiceOrPiano;
    }

    public String getLevel() {
        return Level;
    }

    public void setLevel(String Level) {
        this.Level = Level;
    }
    
    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

   
    
    
   
    
}
