import streamlit as st
import pandas as pd
import numpy as np

st.set_page_config(page_title="App 2 - Port 8080", page_icon="📊")

st.title("📈 Application #2")
st.sidebar.header("Metrics")
st.sidebar.warning("This app is running on Port 8080")

st.write("### Data Visualization Demo")
st.write("This second container is completely isolated from the first one.")

# Small data example to show it's working
chart_data = pd.DataFrame(
    np.random.randn(20, 3),
    columns=['A', 'B', 'C']
)

st.line_chart(chart_data)

st.write("Check the URL: You should be on `localhost:8080`.")