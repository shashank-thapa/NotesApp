from flask_restful import Resource

class Note(Resource):
    def get(self):
        return{"message":"Hello, Shashank!"}
