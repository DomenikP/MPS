package jetbrains.mps.baseLanguage.javastub.asm;

/*Generated by MPS */


public class ASMClassType extends ASMType {
  public static final ASMClassType OBJECT = new ASMClassType("java.lang.Object");
  private String myName;
  public ASMClassType(String name) {
    myName = name;
  }
  public String getName() {
    return myName;
  }
  @Override
  public String toString() {
    return "(" + myName + ")";
  }
}
