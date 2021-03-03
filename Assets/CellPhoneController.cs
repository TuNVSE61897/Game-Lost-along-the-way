using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
public class CellPhoneController : MonoBehaviour
{
    [SerializeField]
    private RectTransform _messagesParent;

    [SerializeField]
    private GameObject _sentMessagePrefab;
    [SerializeField]
    private GameObject _receivedMessagePrefab;

    public void SendMessage(string messageContent)
    {
        var newMessage = Instantiate(_sentMessagePrefab, _messagesParent);
        newMessage.GetComponentInChildren<TMP_Text>().text = messageContent;

        AddMessageUpdate();
    }

    public void ReceiveMessage(string messageContent)
    {
        var newMessage = Instantiate(_receivedMessagePrefab, _messagesParent);
        newMessage.GetComponentInChildren<TMP_Text>().text = messageContent;

        AddMessageUpdate();
    }

    private void AddMessageUpdate()
    {
        // A bit hacky but it's a game jam
        if (_messagesParent.childCount == 6)
        {
            var newPosition = _messagesParent.anchoredPosition;
            newPosition.y = 75f;
            _messagesParent.anchoredPosition = newPosition;
        }
        else if (_messagesParent.childCount > 6)
        {
            var newPosition = _messagesParent.anchoredPosition;
            newPosition.y = 75f + (_messagesParent.childCount - 6) * 115f;
            _messagesParent.anchoredPosition = newPosition;
        }
    }
}
