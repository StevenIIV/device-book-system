package com.eer_system.model;

public class Device {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column device.id
     *
     * @mbggenerated
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column device.device_name
     *
     * @mbggenerated
     */
    private String deviceName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column device.device_type
     *
     * @mbggenerated
     */
    private String deviceType;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column device.device_brand
     *
     * @mbggenerated
     */
    private String deviceBrand;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column device.postion
     *
     * @mbggenerated
     */
    private String postion;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column device.userID
     *
     * @mbggenerated
     */
    private Integer userid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column device.use_time
     *
     * @mbggenerated
     */
    private Integer useTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column device.status
     *
     * @mbggenerated
     */
    private Integer status;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column device.adminID
     *
     * @mbggenerated
     */
    private Integer adminid;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column device.id
     *
     * @return the value of device.id
     *
     * @mbggenerated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column device.id
     *
     * @param id the value for device.id
     *
     * @mbggenerated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column device.device_name
     *
     * @return the value of device.device_name
     *
     * @mbggenerated
     */
    public String getDeviceName() {
        return deviceName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column device.device_name
     *
     * @param deviceName the value for device.device_name
     *
     * @mbggenerated
     */
    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName == null ? null : deviceName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column device.device_type
     *
     * @return the value of device.device_type
     *
     * @mbggenerated
     */
    public String getDeviceType() {
        return deviceType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column device.device_type
     *
     * @param deviceType the value for device.device_type
     *
     * @mbggenerated
     */
    public void setDeviceType(String deviceType) {
        this.deviceType = deviceType == null ? null : deviceType.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column device.device_brand
     *
     * @return the value of device.device_brand
     *
     * @mbggenerated
     */
    public String getDeviceBrand() {
        return deviceBrand;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column device.device_brand
     *
     * @param deviceBrand the value for device.device_brand
     *
     * @mbggenerated
     */
    public void setDeviceBrand(String deviceBrand) {
        this.deviceBrand = deviceBrand == null ? null : deviceBrand.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column device.postion
     *
     * @return the value of device.postion
     *
     * @mbggenerated
     */
    public String getPostion() {
        return postion;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column device.postion
     *
     * @param postion the value for device.postion
     *
     * @mbggenerated
     */
    public void setPostion(String postion) {
        this.postion = postion == null ? null : postion.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column device.userID
     *
     * @return the value of device.userID
     *
     * @mbggenerated
     */
    public Integer getUserid() {
        return userid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column device.userID
     *
     * @param userid the value for device.userID
     *
     * @mbggenerated
     */
    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column device.use_time
     *
     * @return the value of device.use_time
     *
     * @mbggenerated
     */
    public Integer getUseTime() {
        return useTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column device.use_time
     *
     * @param useTime the value for device.use_time
     *
     * @mbggenerated
     */
    public void setUseTime(Integer useTime) {
        this.useTime = useTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column device.status
     *
     * @return the value of device.status
     *
     * @mbggenerated
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column device.status
     *
     * @param status the value for device.status
     *
     * @mbggenerated
     */
    public void setStatus(Integer status) {
        this.status = status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column device.adminID
     *
     * @return the value of device.adminID
     *
     * @mbggenerated
     */
    public Integer getAdminid() {
        return adminid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column device.adminID
     *
     * @param adminid the value for device.adminID
     *
     * @mbggenerated
     */
    public void setAdminid(Integer adminid) {
        this.adminid = adminid;
    }
}