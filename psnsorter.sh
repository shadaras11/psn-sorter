echo "Welcome To Don Juji PSN Log Sorter"
echo "Welcome To Don Juji PSN Log Sorter"
echo "Welcome To Don Juji PSN Log Sorter"

mkdir parse
awk '/================TRANSACTIONS END============/{n++}{print >"parse/chopped" n ".txt" }' accounts.txt
echo "echo \"---------------------------------------------\" >> sortedgames.txt" >> runner.sh
echo "echo \"---Ghost of Tsushima---\" >> sortedgames.txt" >> runner.sh
grep -r -E "Ghost of Tsushima" parse | sed -E "s/(.*.txt):.*/\1/" | sort -Ru  >> ghosttemp.txt 
sed -E "s/(.*)/grep -riah -E ".*@.*:.*" \1 \>\> sortedgames.txt/" ghosttemp.txt >> runner.sh
echo "wc -l ghosttemp.txt |sed -E \"s/^([0-9]{1,4}) .*/\1/\" | sed -E \"s/(.*)/Total Accounts: \1/\" >> sortedgames.txt" >> runner.sh
echo "echo \"---------------------------------------------\" >> sortedgames.txt" >> runner.sh
echo "echo \"---FIFA 20---\" >> sortedgames.txt" >> runner.sh
grep -r -E "FIFA 20 \[Date|FIFA 20 Standard |FIFA 20 Ultimate Edition |FIFA 20 Champions" parse | sed -E "s/(.*.txt):.*/\1/" | sort -Ru  >> fifa20temp.txt
sed -E "s/(.*)/grep -riah -E ".*@.*:.*" \1 \>\> sortedgames.txt/" fifa20temp.txt >> runner.sh
echo "wc -l fifa20temp.txt | sed -E \"s/^([0-9]{1,4}) .*/\1/\" | sed -E \"s/(.*)/Total Accounts: \1/\" >> sortedgames.txt" >> runner.sh
echo "echo \"---------------------------------------------\" >> sortedgames.txt" >> runner.sh
echo "echo \"---The Last of Us Part II---\" >> sortedgames.txt" >> runner.sh
grep -r -E "The Last of Us Part II \[Date|The Last of Us Part II Digital|The Last of Us™ Part II Standard" parse | sed -E "s/(.*.txt):.*/\1/" | sort -Ru  >> LOU2temp.txt
sed -E "s/(.*)/grep -riah -E ".*@.*:.*" \1 \>\> sortedgames.txt/" LOU2temp.txt >> runner.sh
echo "wc -l LOU2temp.txt | sed -E \"s/^([0-9]{1,4}) .*/\1/\" | sed -E \"s/(.*)/Total Accounts: \1/\" >> sortedgames.txt" >> runner.sh
echo "echo \"---------------------------------------------\" >> sortedgames.txt" >> runner.sh
echo "echo \"---Cuphead---\" >> sortedgames.txt" >> runner.sh
grep -r -E "Cuphead" parse | sed -E "s/(.*.txt):.*/\1/" | sort -Ru  >> cupheadtemp.txt
sed -E "s/(.*)/grep -riah -E ".*@.*:.*" \1 \>\> sortedgames.txt/" cupheadtemp.txt >> runner.sh
echo "wc -l cupheadtemp.txt | sed -E \"s/^([0-9]{1,4}) .*/\1/\" | sed -E \"s/(.*)/Total Accounts: \1/\" >> sortedgames.txt" >> runner.sh
echo "echo \"---------------------------------------------\" >> sortedgames.txt" >> runner.sh
echo "echo \"---FIFA 21---\" >> sortedgames.txt" >> runner.sh
grep -r -E "FIFA 21" parse | sed -E "s/(.*.txt):.*/\1/" | sort -Ru  >> fifa21temp.txt
sed -E "s/(.*)/grep -riah -E ".*@.*:.*" \1 \>\> sortedgames.txt/" fifa21temp.txt >> runner.sh
echo "wc -l fifa21temp.txt | sed -E \"s/^([0-9]{1,4}) .*/\1/\" | sed -E \"s/(.*)/Total Accounts: \1/\" >> sortedgames.txt" >> runner.sh
echo "echo \"---------------------------------------------\" >> sortedgames.txt" >> runner.sh
echo "echo \"---Cyberpunk 2077---\" >> sortedgames.txt" >> runner.sh
grep -r -E "Cyberpunk 2077 \[Date" parse | sed -E "s/(.*.txt):.*/\1/" | sort -Ru  >> cyberptemp.txt
sed -E "s/(.*)/grep -riah -E ".*@.*:.*" \1 \>\> sortedgames.txt/" cyberptemp.txt >> runner.sh
echo "wc -l cyberptemp.txt | sed -E \"s/^([0-9]{1,4}) .*/\1/\" | sed -E \"s/(.*)/Total Accounts: \1/\" >> sortedgames.txt" >> runner.sh
echo "echo \"---------------------------------------------\" >> sortedgames.txt" >> runner.sh
echo "echo \"---PES 2020---\" >> sortedgames.txt" >> runner.sh
grep -r -E "eFootball PES 2020 " parse | sed -E "s/(.*.txt):.*/\1/" | sort -Ru  >> pestemp.txt
sed -E "s/(.*)/grep -riah -E ".*@.*:.*" \1 \>\> sortedgames.txt/" pestemp.txt >> runner.sh
echo "wc -l pestemp.txt | sed -E \"s/^([0-9]{1,4}) .*/\1/\" | sed -E \"s/(.*)/Total Accounts: \1/\" >> sortedgames.txt" >> runner.sh
echo "echo \"---------------------------------------------\" >> sortedgames.txt" >> runner.sh
echo "echo \"---WWE 2K20---\" >> sortedgames.txt" >> runner.sh
grep -r -E "WWE 2K20 Deluxe |WWE 2K20 Digital|WWE 2K20 Digital" parse | sed -E "s/(.*.txt):.*/\1/" | sort -Ru  >> WWEtemp.txt
sed -E "s/(.*)/grep -riah -E ".*@.*:.*" \1 \>\> sortedgames.txt/" WWEtemp.txt >> runner.sh
echo "wc -l WWEtemp.txt | sed -E \"s/^([0-9]{1,4}) .*/\1/\" | sed -E \"s/(.*)/Total Accounts: \1/\" >> sortedgames.txt" >> runner.sh
echo "echo \"---------------------------------------------\" >> sortedgames.txt" >> runner.sh
echo "echo \"---KAKAROT---\" >> sortedgames.txt" >> runner.sh
grep -r -E "KAKAROT Ultimate Edition|KAKAROT Deluxe|KAKAROT \[Date" parse | sed -E "s/(.*.txt):.*/\1/" | sort -Ru  >> kakarottemp.txt
sed -E "s/(.*)/grep -riah -E ".*@.*:.*" \1 \>\> sortedgames.txt/" kakarottemp.txt >> runner.sh
echo "wc -l kakarottemp.txt | sed -E \"s/^([0-9]{1,4}) .*/\1/\" | sed -E \"s/(.*)/Total Accounts: \1/\" >> sortedgames.txt" >> runner.sh
echo "echo \"---------------------------------------------\" >> sortedgames.txt" >> runner.sh
echo "echo \"---Grand Theft Auto 5---\" >> sortedgames.txt" >> runner.sh
grep -r -E "Grand Theft Auto V Premium Online|Grand Theft Auto V \[Date" parse | sed -E "s/(.*.txt):.*/\1/" | sort -Ru  >> gta5temp.txt
sed -E "s/(.*)/grep -riah -E ".*@.*:.*" \1 \>\> sortedgames.txt/" gta5temp.txt >> runner.sh
echo "wc -l gta5temp.txt | sed -E \"s/^([0-9]{1,4}) .*/\1/\" | sed -E \"s/(.*)/Total Accounts: \1/\" >> sortedgames.txt" >> runner.sh
echo "echo \"---------------------------------------------\" >> sortedgames.txt" >> runner.sh
echo "echo \"---Days Gone---\" >> sortedgames.txt" >> runner.sh
grep -r -E "Days Gone" parse | sed -E "s/(.*.txt):.*/\1/" | sort -Ru  >> daysgonetemp.txt
sed -E "s/(.*)/grep -riah -E ".*@.*:.*" \1 \>\> sortedgames.txt/" daysgonetemp.txt >> runner.sh
echo "wc -l daysgonetemp.txt | sed -E \"s/^([0-9]{1,4}) .*/\1/\" | sed -E \"s/(.*)/Total Accounts: \1/\" >> sortedgames.txt" >> runner.sh
bash runner.sh
echo "PARSED BY DONJUJI PSN LOG SORTER v1.0" >> sortedgames.txt
echo "PARSED BY DONJUJI PSN LOG SORTER v1.0" >> sortedgames.txt
echo "PARSED BY DONJUJI PSN LOG SORTER v1.0" >> sortedgames.txt
