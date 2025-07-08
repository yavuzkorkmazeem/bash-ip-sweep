Bash IP Sweep Tool

This is a simple IP sweep script written in Bash.It scans a /24 subnet (e.g., 192.168.1.0/24) and lists the live hosts that respond to ICMP echo requests (ping).

📚 About

This is my first Bash networking tool. I built it while following the "Zero to Hero in Pentesting" video series (11 parts) by TCM Security on YouTube.

⚙️ How It Works

The script sends a single ping (ping -c 1) to each IP address in the specified subnet, from .1 to .254, and prints out any host that replies.

It also runs the pings in parallel using background jobs (&) for faster scanning.

🧪 Usage

Make the script executable:

chmod +x sweep.sh

Then run it by providing the first 3 octets of the target subnet:

./sweep.sh 192.168.1

This will scan from 192.168.1.1 to 192.168.1.254.

🗌 Example Output

192.168.1.1
192.168.1.7
192.168.1.42

⚠️ Notes

Only works on systems that support ping and basic Bash tools (grep, cut, tr)

Designed for educational and internal network use only

May be blocked by firewalls or systems configured to drop ICMP

✅ Tested On

Kali Linux

Ubuntu

Debian-based systems

🙏 Credits

This project was inspired by TCM Security's "Zero to Hero in Pentesting" YouTube series.
