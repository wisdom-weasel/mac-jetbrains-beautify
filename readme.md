#macOS JetBrains Products Ultimate Icon Beautifier

## It's June, 2022. We have flying cars and dancing bears. Yet, JetBrains still refuses to conform to the squarish icon design of macOS. Why, just why?

## That's when I come to the rescue! To save me from my OCD, and also making myself to have one less thing to blame my deteriorating productivity on!

##Notice: This is for JetBrains products installed with JetBrains Toolbox. I have not tested this with other install methods yet.

##Usage

1. Go to `~/Library/Application Support/JetBrains/Toolbox/apps` to see which apps you have installed. While, for example, WebStorm is called WebStorm in the apps, PyCharm Professional is called PyCharm-P. Take note of these directory names.

2. Download the icons of the apps that you want to replace with, according to the directory names in Step 1. The file extension must be `.icns`. I recommend searching and downloading from [https://macosicons.com/]. Place it under the same directory with the `main.sh` script. For example, `WebStorm.icns`.

3. Run the `main.sh` script. If this is your first rodeo, remember to `chmod +x ./main.sh` should any permission error occur.

4. ???

5. Profit!


##Notes

1. This will replace the icons which will show up on the dock, which is extremely hard to replace (which is why I wrote this script). To replace the launcher icons in launchpad, please download Pictogram [https://pictogramapp.com] to do that instead.

2. After updating the products from JetBrains Toolbox, you may need to re-run this script to apply the icons to them. I'm too lazy to write something that will execute this script on every reboot though. You can do that yourself though!

3. This is my first time sharing my crappy shell script with the rest of the world. Is it that bad though? 🥶 Yes it is. 🥶 Complain all you want if you encounter any bugs, as I wrote it in 2-3 hours. I'm really bad at shell script, as a crappy web dev who only knows JavaScript.

4. To revert the icons back, simply run the script with `--recover` flag. Though I don't know why you would want to do that, and you'll be personally condemned to the deepest layers of hell by me.

5. Usage rights? Commerciaize it. Use it to build your nuclear bomb. I don't care.