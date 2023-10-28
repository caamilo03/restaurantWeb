/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.camimigue.model;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jcami
 */
public class Loader {

    private List<Menus> lstMenus;
    private Gson gson;

    public List<Menus> getLstMenus() {
        return lstMenus;
    }

    public Loader() {
        lstMenus = new ArrayList<>();
        gson = new Gson();
    }

    public void loadByCategory(String category) {
        try {
            Reader reader = new FileReader("../../../resources/menus.json");

            this.lstMenus = gson.fromJson(reader, new TypeToken<ArrayList<Menus>>() {
            }.getType());
        
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            System.out.println("File not found");
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("Error to open file");
        }

    }
}
