%Les symboles
symboles=cellstr(char('C','O','D','A','G','E','H','F'));
%les probabilites
proba=[0.3 0.2 0.18 0.1 0.07 0.06 0.05 0.04];
%the Huffman code dictionnary
dict=huffmandict(symboles,proba);
disp('dictionnaire de huffman est :');
for i=1:length(dict)
    fprintf('symboles : %s , code : %s \n ',dict{i,1},num2str(dict{i,2}));
end
disp(dict);
%les symboles partie 2 
symboles=cellstr(char('a','f','o','r','u','x','s'));
%les probabilites associer a la partie 2
proba=[0.4 0.15 0.1 0.05 0.2 0.05 0.05];
%the Huffman code dictionary
dict=huffmandict(symboles,proba);
disp('dictionnaire de huffman est :');
for i=1:length(dict)
    fprintf('symboles : %s , code : %s \n ',dict{i,1},num2str(dict{i,2}));
end
%coder le message 'aforuxs'
hencode=huffmanenco(symboles,dict);
%afficher le msg codé
disp(hencode);
%decoder le msg 'aforuxs'
hdecode=huffmandeco(hencode,dict);
%afficher le message decodé
disp(hdecode);

