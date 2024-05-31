# =============================================================================
import gradio as gr

# =============================================================================
TAB_NAME = "test main" 

# =============================================================================
def on_ui_tabs():

    # 'analytics_enabled=False' : Configure Gradio not to collect analysis data
    with gr.Blocks(analytics_enabled=False) as interface:
        gr.Markdown(TAB_NAME)

    return (interface, TAB_NAME)

# =============================================================================
