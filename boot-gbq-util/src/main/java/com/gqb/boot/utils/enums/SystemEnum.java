package com.gqb.boot.utils.enums;

public enum SystemEnum {

    // 数据状态
    System_Windows(true, "Windows 10");

    /**
     * 键
     */
    private boolean key;
    /**
     *  值
     */
    private String value;

    SystemEnum(boolean key, String value) {
        this.key = key;
        this.value = value;
    }

    public String getValue() {
        return value;
    }

    public boolean getKey() {
        return key;
    }

    public static boolean getValue(String property) {
        if (System_Windows.getValue().equals( System.getProperty(property))){
            return System_Windows.getKey();
        }else {
            return false;
        }
    }
}
