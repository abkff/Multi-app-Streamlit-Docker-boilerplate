import streamlit as st

st.set_page_config(page_title="App 1 - Port 80", page_icon="🚀")

st.title("🌐 Application #1")
st.sidebar.header("Configuration")
st.sidebar.info("This app is running on Port 80")

st.write("""
### Welcome to the first service!
This is a boilerplate example for a multi-container Docker setup.
""")

if st.button('Say Hello'):
    st.success("Hello from Container 1 (test1)!")
else:
    st.write("Click the button to interact.")

st.info("Edit `app1/main.py` to see changes live thanks to Docker Volumes.")