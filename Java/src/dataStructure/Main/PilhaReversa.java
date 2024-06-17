//package Java.src.dataStructure.Main;
//import Java.src.dataStructure.Stack;
//
//public class Main{
//
//    public static void main(String[] args) {
//        int [] numeros = {1,2,3,4,5,6};
//
//        inverter(numeros);
//    }
//
//    private static void inverter(final int[] numeros) {
//        Stack stack = new Stack(numeros[0]);
//
//        for (int i = 1; i < numeros.length; i++) {
//            stack.push(numeros[i]);
//        }
//        var node = stack.pop();
//        while (node != null) {
//            System.out.println(node.getValue());
//            node = stack.pop();
//        }
//    }
//
//}
//