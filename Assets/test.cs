using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class test : MonoBehaviour {

	// Use this for initialization
	void Start () {
		int[] points = { 5, 7, 3, 6 };

		int sum = 0;
		for (int i = 0; i < points.Length; i++) {
			sum += points [i];
		}

		int average = sum / points.Length;

		Debug.Log (average);
	
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
