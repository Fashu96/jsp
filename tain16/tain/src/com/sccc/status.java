package com.sccc;

import java.util.ArrayList;
import java.util.HashMap;

public class status {
        private ArrayList<String> zhuangTai;
        private HashMap<String,ArrayList<String>>tiMu;
        
        public status(){
        	 zhuangTai = new ArrayList<String>();
        	 tiMu = new HashMap<String,ArrayList<String>>();
        	 
        	 String qingKuang = "û�нӵ������ѵ绰ʱ~~";
        	 zhuangTai.add(qingKuang);
        	 
        	 
        	 
        	 String xuanXiang1 = "���ֻ��ղž�����";
        	 String xuanXiang2 = "�ո����ڴ���Ϸ";
        	 String xuanXiang3 = "�����ڸ�������";
        	 String xuanXiang4 = "�Ҹո��ڹ���";
        	 String xuanXiang5 = "�Ҹո���˯��";
        	 String xuanXiang6 = "����������";
        	 
        	 
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
