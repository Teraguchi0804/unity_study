using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class test : MonoBehaviour {

    int add(int a, int b)
    {
        int c = a + b;
        return c;
    }

    // Use this for initialization
    void Start()
    {
        int answer;
        answer = add(2, 3);
        Debug.Log(answer);
    }

    // Update is called once per frame
    void Update () {

    }
}
