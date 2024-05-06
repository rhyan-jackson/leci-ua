def decrypt():
    PAD_CHAR = "["
    
    decrypted_text = 'sbsfhjsdfhjsdfhjbsdhfdf[[[[['
    # sbsfhjsdfhjsdfhjbsdhfdf[[[[[
    first_pad_pos = decrypted_text.find(PAD_CHAR)

    print(decrypted_text[:first_pad_pos])

decrypt()