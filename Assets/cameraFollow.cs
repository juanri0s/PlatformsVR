using UnityEngine;
using System.Collections;

public class cameraFollow : MonoBehaviour
{
    public GameObject camera;
    private float rotationY;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update ()
    {
        rotationY = camera.transform.localEulerAngles.y;
        transform.localEulerAngles = new Vector3(90, rotationY, 0);
        
        if(camera.transform.localEulerAngles.x > 40.0f && !GetComponent<Animator>().GetBool("visible"))
        {
            GetComponent<Animator>().SetBool("visible", true);
        }

        if (camera.transform.localEulerAngles.x < 40.0f && GetComponent<Animator>().GetBool("visible"))
        {
            GetComponent<Animator>().SetBool("visible", false);
        }
        
        //print(camera.transform.localEulerAngles.x.ToString());
    }
}
