using UnityEngine;
using UnityEngine.InputSystem;

public class CharacterController : MonoBehaviour
{
    private Animator _animator;
    private float _threshold = 0.1f;
    
    // Start is called before the first frame update
    void Start()
    {
        _animator = GetComponent<Animator>();
    }

    public void PlayerMove(InputAction.CallbackContext callbackContext)
    {
        Vector2 movement = callbackContext.ReadValue<Vector2>();
        Debug.Log(movement.ToString());

        if (movement.y > _threshold)
        {
            _animator.SetBool("Walk", true);
        }
        else if(movement.y <= _threshold)
        {
            _animator.SetBool("Walk", false);
        }
        
        if (movement.y < -_threshold)
        {
            _animator.SetBool("Walk Backward", true);
        }
        else if(movement.y >= -_threshold)
        {
            _animator.SetBool("Walk Backward", false);
        }
        
        
    }
}
