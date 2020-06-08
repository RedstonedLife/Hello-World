from flask import *

# Initialize App
app = Flask(__name__)

# Set a route
@app.route('/')
def index():
  return render_template('index.html')
 
# Start up localhost private web server
if __name__ == '__main__':
  app.run(host='127.0.0.1',port=5000,debug=True)
  # 127.0.0.1 is localhost
  # port is 5000 (by default)
  # When debug is true it will return a "werkzeug"
  # Debug page, with all the errors, what may have
  # led to them and the conflicting lines
