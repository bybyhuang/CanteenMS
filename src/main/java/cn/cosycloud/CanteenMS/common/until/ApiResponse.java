package cn.cosycloud.CanteenMS.common.until;


import sun.plugin2.message.Message;

public class ApiResponse {

    public static final int SUCCESS = 200;
    public static final int FAIL = 300;

    private int state;

    private String message;

    private Object data;


    /*
     * @Author byhuang
     * @Description 构造成功的返回对象
     * @Date  2018/12/28
     * @Param
     * @return
     **/
    public ApiResponse(Object data){
        this.data = data;
        this.state = SUCCESS;
        this.message = "success";
    }

    /*
     * @Author byhuang
     * @Description 构造失败函数
     * @Date 3:18 PM 2018/12/28
     * @Param
     * @return
     **/
    public ApiResponse(String message,Object data){
        this.data = data;
        this.state = FAIL;
        this.message = message;
    }

    public ApiResponse(String message){
        this.data = "";
        this.state = FAIL;
        this.message = message;
    }


    public static ApiResponse initSuccess(Object data){

        ApiResponse response = new ApiResponse(data);
        return response;
    }

    public static ApiResponse initFail(String message){
        ApiResponse response = new ApiResponse(message);
        return response;
    }


    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
