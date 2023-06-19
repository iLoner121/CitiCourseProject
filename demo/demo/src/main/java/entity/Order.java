package entity;

public class Order {
  private String address;
  private String street;
  private String recipient;
  private String postcode;
  private Integer invoice;
  private String product;

  public Order(){

  }

  public Order(String address, String street, String recipient, String postcode,
      Integer invoice, String product) {
    this.address = address;
    this.street = street;
    this.recipient = recipient;
    this.postcode = postcode;
    this.invoice = invoice;
    this.product = product;
  }

  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public String getStreet() {
    return street;
  }

  public void setStreet(String street) {
    this.street = street;
  }

  public String getRecipient() {
    return recipient;
  }

  public void setRecipient(String recipient) {
    this.recipient = recipient;
  }

  public String getPostcode() {
    return postcode;
  }

  public void setPostcode(String postcode) {
    this.postcode = postcode;
  }

  public Integer getInvoice() {
    return invoice;
  }

  public void setInvoice(Integer invoice) {
    this.invoice = invoice;
  }

  public String getProduct() {
    return product;
  }

  public void setProduct(String product) {
    this.product = product;
  }

  @Override
  public String toString() {
    return "Order{" +
        "address='" + address + '\'' +
        ", street='" + street + '\'' +
        ", recipient='" + recipient + '\'' +
        ", postcode='" + postcode + '\'' +
        ", invoice=" + invoice +
        ", product='" + product + '\'' +
        '}';
  }
}
