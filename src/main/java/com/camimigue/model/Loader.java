/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.camimigue.model;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Paths;
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
            List<Menus> tempMenus = new ArrayList<>();

            String reader = readFileFromResources("menus.json");
            tempMenus = gson.fromJson(reader, new TypeToken<ArrayList<Menus>>() {
            }.getType());
            for (Menus menu : tempMenus) {
                String tempString = menu.getCategory();
                if (tempString.equals(category)) {
                    this.lstMenus.add(menu);

                }
            }
            System.out.println(lstMenus.size());
        } catch (FileNotFoundException e) {
            System.out.println("File not found");
        } catch (IOException e) {
            System.out.println("Error to open file");
        } catch (Exception e) {
            System.out.println("Error to open file");
        }

    }

    public String readFileFromResources(String filename) throws URISyntaxException, IOException {
        URL resource = this.getClass().getClassLoader().getResource(filename);
        byte[] bytes = Files.readAllBytes(Paths.get(resource.toURI()));
        return new String(bytes);
    }

}
