using UnityEngine;
using System.Collections;

public class MovingPlatforms : MonoBehaviour
{

    public Transform movingPlatform;
    public Transform position1;
    public Transform position2;
    public Vector3 newPosition;
    public string currentState;
    public float smooth;
    public float resetTime;
    public GameObject player;
    private bool holdCharacter = false;
    private Vector3 plyPos;
    private bool onTrigger = false;


    // Use this for initialization
    void Start()
    {
        ChangeTarget();
    }

    // Update is called once per frame
    void Update()
    {
        movingPlatform.position = Vector3.Lerp(movingPlatform.position, newPosition, smooth * Time.deltaTime);
        if (holdCharacter)
        {
            player.GetComponent<VRAdvancedWalk>().AllowedToMove(false);
            plyPos.x = movingPlatform.position.x;
            plyPos.y = movingPlatform.position.y + 1.7f;
            plyPos.z = movingPlatform.position.z;
            player.transform.position = plyPos;
            print("moving character");
        }
    }

    void OnTriggerEnter(Collider other)
    {
        onTrigger = true;
        print("trigger on");
    }

    void OnTriggerExit(Collider other)
    {
        if (!holdCharacter)
        {
            onTrigger = false;
            print("trigger off");
        }
    }

    void ReleaseCharacter()
    {
        if (holdCharacter)
        {
            //player.GetComponent<BoxCollider>().enabled = true;
            holdCharacter = false;
            player.GetComponent<VRAdvancedWalk>().AllowedToMove(true);
            print("releasing character");
        }
        else print("nothing to release");
    }

    void HoldCharacter()
    {
        if (onTrigger)
        {
            //player.GetComponent<BoxCollider>().enabled = false;
            holdCharacter = true;
            print("holding character");
        }
        else print("nothing to hold");

    }

    void ChangeTarget()
    {
        if (currentState == "Moving to position1")
        {
            currentState = "Moving to position2";
            newPosition = position2.position;
        }
        else if (currentState == "Moving to position2")
        {
            currentState = "Moving to position1";
            newPosition = position1.position;
        }
        else if (currentState == "")
        {
            currentState = "Moving to position2";
            newPosition = position2.position;
        }
        Invoke("ReleaseCharacter", resetTime - 4.0f);
        Invoke("HoldCharacter", resetTime - 0.5f);
        Invoke("ChangeTarget", resetTime);

    }
}