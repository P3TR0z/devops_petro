from argparse import ArgumentParser
from greeter import greet # Note python 3 relative import

def process():
   parser = ArgumentParser(description = "Generate appropriate greetings")

   parser.add_argument('--title', '-t')
   parser.add_argument('--polite', '-p', action="store_true")
   parser.add_argument('personal')
   parser.add_argument('family')

   arguments= parser.parse_args()
   message = greet(arguments.personal, arguments.family, 
               arguments.title, arguments.polite)
   print(message)

if __name__ == "__main__":
    process()
