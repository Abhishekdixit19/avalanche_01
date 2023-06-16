# Auth Contract
This Solidity contract implements basic authentication. Users can authenticate themselves by providing an ID and password combination. If the provided values match the predefined ones, access is granted.

# Contract Details
*State Variables*
id: Predefined ID (default: 123)
password: Predefined password (default: 456)
access: Indicates whether the user has access (default: false)
*Functions*

auth(uint IsId, uint InPassword)
Allows users to authenticate by providing an ID and password. Grants access if both values match the predefined ones.

Error Handling:
The function uses the require statement to check if the provided IsId matches the predefined id. If it does not match, it reverts the transaction with the error message "Wrong Id."
The function uses the assert statement to check if the provided InPassword matches the predefined password. If it does not match, it triggers an assertion error.
If the authentication is successful, the access variable is set to true.

showAccess()
Returns true if the user has been granted access; otherwise, triggers a revert exception with the message "You don't have access."

Error Handling:
If the user does not have access (i.e., access is false), the function triggers a revert exception with the error message "You don't have access."
