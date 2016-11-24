package com.sccc;

import java.util.ArrayList;
import java.util.HashMap;

public class status {
        private ArrayList<String> zhuangTai;
        private HashMap<String,ArrayList<String>>tiMu;
        
        public status(){
        	 zhuangTai = new ArrayList<String>();
        	 tiMu = new HashMap<String,ArrayList<String>>();
        	 
        	 String qingKuang = "没有接到男朋友电话时~~";
        	 zhuangTai.add(qingKuang);
        	 
        	 
        	 
        	 String xuanXiang1 = "我手机刚才静音了";
        	 String xuanXiang2 = "刚刚我在打游戏";
        	 String xuanXiang3 = "我正在给你买东西";
        	 String xuanXiang4 = "我刚刚在工作";
        	 String xuanXiang5 = "我刚刚在睡觉";
        	 String xuanXiang6 = "我正在做饭";
        	 
        	 
        	 ArrayList<String>temp = new ArrayList<String>();
        	 
        	 temp.add(xuanXiang1);
        	 temp.add(xuanXiang2);
        	 temp.add(xuanXiang3);
        	 temp.add(xuanXiang4);
        	 temp.add(xuanXiang5);
        	 temp.add(xuanXiang6);
        	 tiMu.put(qingKuang, temp);
        	 
        }
        public ArrayList<String>getZhuangTai(){
        	return zhuangTai;
        }
        public void setZhuangTai(ArrayList<String> zhuangTai){
        	this.zhuangTai = zhuangTai;
        }
        public HashMap<String,ArrayList<String>>  getTiMu(){
        	return tiMu;
        }
}
