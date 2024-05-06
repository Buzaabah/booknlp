from booknlp.booknlp import BookNLP

model_params={
        "pipeline":"entity,quote,supersense,event,coref", 
        "model":"big"
    }
    
booknlp=BookNLP("en", model_params)

# Input file to process
#input_file="158_emma.txt"
input_file="Ireke_Onibudo.txt"

# Output directory to store resulting files in
#output_directory="158_emma"
output_directory="Ireke_Onibudo"

# File within this directory will be named ${book_id}.entities, ${book_id}.tokens, etc.
#book_id="158_emma"
book_id="Ireke_Onibudo"
booknlp.process(input_file, output_directory, book_id)