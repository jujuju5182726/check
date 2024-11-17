import jwt
import datetime

# Key for signing the token
secret_key = "your_secret_key"  # Replace with your actual secret key

# Header
header = {
    "typ": "JWT",
    "alg": "HS256"  # or RS256 for RSA signing
}

# Payload
payload = {
    "phone": "01903540636",
    "iat": datetime.datetime.utcnow(),
    "exp": datetime.datetime.utcnow() + datetime.timedelta(days=30),
    "sub": "user1234"  # Example user ID
}

# Encode the token
token = jwt.encode(payload, secret_key, algorithm="HS256", headers=header)

print("Generated JWT:", token)
