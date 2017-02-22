using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class test : MonoBehaviour {

    // Use this for initialization
    void Start (){
        int herbNum = 1;
        if (herbNum == 1){
            for (int i = 0; i < 5; i++){
                Debug.Log("HPが50回復");
            }
        }
    }

    // Update is called once per frame
    void Update () {

    }
}
