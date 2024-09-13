using System;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.InputSystem;

public class CharacterController : MonoBehaviour
{
    public float forwardSpeed = 2.0f;
    public float backwardSpeed = 1.5f;
    private Vector3 _movement;
    private float _targetSpeed = 0.0f;
    private float _currentSpeed = 0.0f;

    private Animator _animator;
    private readonly float _threshold = 0.1f;
    
    
    // Start is called before the  irst frame update
    void Start()
    {
        _animator = GetComponent<Animator>();
    }

    private void Update()
    {
        Move();
    }


    void Move()
    {
        _currentSpeed  = Mathf.Lerp(_targetSpeed, _currentSpeed, 0.9f);
        _movement = new Vector3(0, 0, _currentSpeed * Time.deltaTime);
        transform.position += _movement;
        _animator.SetFloat("Speed", _currentSpeed);
    }
    

    public void PlayerMove(InputAction.CallbackContext callbackContext)
    {
        Vector2 movement = callbackContext.ReadValue<Vector2>();
        _targetSpeed = movement.y > 0 ? forwardSpeed * movement.y : backwardSpeed * movement.y;
    }
}
