using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player
{
    private int hp = 100;
    private int power = 50;

    public void Attack()
    {
        Debug.Log(this.power + "のダメージを与えた");
    }

    public void Damage(int damege)
    {
        this.hp -= damege;
        Debug.Log(damege + "のダメージを受けた");
    }
}

public class test : MonoBehaviour {

    // Use this for initialization
    void Start()
    {
        //この場合のthisはGameObject
        //Debug.Log(this);
        Player myPlayer = new Player();
        myPlayer.Attack();
        myPlayer.Damage(30);
    }

    // Update is called once per frame
    void Update () {

    }
}
