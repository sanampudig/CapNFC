# CapNFC: Near-field Capacitive Communication Transceiver
The Nearfield Capacitive Communication Transceiver (CapNFC), a novel short-range wireless communication device, transmits data by touch or proximity. By applying an alternating voltage to the transmitting electrode, this ultra-low-power transceiver induces an alternating electric field between the two electrodes and generates displacement current in the receiver. The data transfer is made possible by the receiver's amplification and decoding of the generated current. The CapNFC project uses the PSoC 5 to develop and build the hardware and software for this sophisticated transceiver. The transceiver can be configured and is quite adaptable, making it compatible with a variety of devices and communication protocols. Through simulations and testing CapNFC design has been verified. The CapNFC transceiver is ideal for applications that require short-range wireless communication with low power consumption and a small form factor. The design files for this innovative solution are freely available for use by the research and designer communities, facilitating the development of new and exciting applications. With CapNFC, the possibilities for short-range wireless communication are endless!

## Introduction
As human knowledge and intelligence continue to expand, technology has also progressed rapidly, providing us with an array of smart devices that have transformed the way we live and interact with the world around us. These devices have made our lives more comfortable, convenient, and connected than ever before.
In this era of smart devices, wireless communication has become the norm, and there are numerous ways to achieve it. However, with the rise of ubiquitous computing, the traditional methods of communication have been challenged, and new innovative techniques have emerged to meet the ever-increasing demand for seamless communication

Developers are faced with several trade-offs when selecting a communication method, including cost, form factor, and power consumption. This challenge becomes even more significant when dealing with a large number of interactive objects that must be small, have diverse form factors, operate on limited power, and be cost-effective. Technologies such as RFID or NFC provide an excellent alternative for medium-range communication, particularly when exchanging information within a short-range spatial context. Moving from the inductive to the capacitive domain, the conductive properties of the human body allow for the indirect incorporation of body parts, touches, and proximity into the communication technique. In ubiquitous computing, this property can be fully leveraged as a means of short-range communication, using either the air or the human body as a communication channel\cite{Zim}.

CapNFC technology uses a capacitor as the primary means of transferring data between devices. A capacitor is an electronic component that stores electrical charge and is commonly used in electronic circuits. Capacitors are able to transfer data wirelessly between devices through the exchange of electrical charge. One of the main advantages of capacitor-based NFC technology over traditional inductive coupling-based NFC is its reliability. Capacitor-based NFC is less susceptible to interference from external magnetic fields, which can disrupt data transfer in inductive coupling-based NFC. Additionally, capacitor-based NFC offers improved power efficiency, as it requires less power to operate than inductive coupling-based NFC.

CapNFC also offers an increased range over traditional inductive coupling-based NFC. This is because capacitors are able to transfer data wirelessly over longer distances than inductive coils. Capacitor-based NFC can transfer data over distances of up to several centimeters, compared to the maximum distance of a few millimeters for inductive coupling-based NFC. Capacitor-based NFC technology has several potential applications, including contactless payments, access control, and data transfer. Contactless payment systems using capacitor-based NFC have already been implemented in some countries, allowing users to make payments by simply tapping their mobile devices on a payment terminal. Capacitor-based NFC can also be used for access control systems, allowing users to gain entry to buildings or rooms by tapping their mobile devices on a reader. In addition, capacitor-based NFC can be used for data transfer between devices, enabling users to share data between their mobile devices without the need for cables or other physical connections.


Despite its potential advantages, capacitor-based NFC technology also faces several challenges. One of the main challenges is the design of capacitive sensors (electrodes) that can reliably detect and transmit data wirelessly between devices. Another challenge is the development of standardized protocols for capacitor-based NFC, which will enable interoperability between different devices and systems.

One of the key advantages of capacitor-based NFC is its low power consumption. This makes it an ideal technology for use in devices with limited power resources, such as mobile phones and other portable devices

![pay](https://github.com/sanampudig/CapNFC/assets/110079648/94792581-92d1-4bd1-af30-1ae372c33b12)

In summary, capacitor-based NFC technology offers several advantages over traditional inductive coupling-based NFC, including improved reliability, reduced cost, and increased range. Capacitor-based NFC has the potential to revolutionize contactless payment systems, access control systems, and data transfer between devices. However, further research and development are needed to overcome the challenges faced by this technology and to fully realize its potential in real-world applications.

Intrabody communications , information exchange via touchscreens , or access schemes in proximity sensing \cite{Smith}\cite{TG} have all shown interest in capacitive coupling as a communication technique.

In this paper we present and discuss Capacitive Near-Field
Communication \textit{(CapNFC)} as Embedded Systems Design(VL 864) Course project at International Institute of Information Technology, Bangalore. We succesfuully implemented PSoC5 based CapNFC transmitter and Receiver. Tobias Grosse-Puppendahl's Capacitive Near-Field Communication for Ubiquitous Interaction and Perception work is a base paper for this project. All the design files are made freely available for further usage to the research and designers community.

## Background


CapNFC utilizes capacitive coupling between a transmitter and receiver electrode to enable communication \cite{TG}. By applying an alternating voltage to one electrode and connecting the other to ground, a changing electric field is created between the two electrodes. In CapNFC, the induced displacement current is measured on the receiver side. Due to its quasi-electrostatic nature, CapNFC operates without wave propagation, which limits the flow of displacement current from the transmitter to the environment, resulting in energy savings. Low-frequency voltages (≤1 MHz) are used to communicate through capacitive coupling, with the receiver amplifying the induced displacement current and decoding the message. Various encoding schemes can be used on top of this physical communication channel. The communication range and robustness depend on the size of the transmitter electrodes and their voltage levels. Higher voltages increase the displacement current and improve performance, while bigger electrodes allow for better capacitive coupling \cite{13} but also pick up more background noise. 

To enable communication through capacitive coupling, both a transmitter and receiver electrode need to be present, as well as a shared ground connection. When two objects share a common ground, a displacement current can flow between the electrodes. This common ground can be achieved by connecting both circuits to the same ground or by connecting them to the environment's ground. In the case of CapNFC, the displacement currents are very small, so even weak capacitive coupling to the environment's ground can allow communication between a grounded transmitter and receiver. This connection can be established by a user touching the object or the surface on which the object is placed.

As many portable devices rely on batteries, they do not have a direct or shared ground connection, which is necessary for communication. However, humans have a good capacitive coupling to the environment's ground, which can be utilized to establish a common ground between two objects. This can be achieved by embedding ground electrodes into the object's casing and connecting them to the battery's negative terminal. When a human touches or comes close to the ground electrode, the capacitive coupling between the electrode and the environment's ground is strong enough to enable a displacement current to flow. 


ON OFF Keying, commonly abbreviated as OOK, is a digital modulation technique that involves the transmission of data through a signal that alternates between two different states, typically a high and a low voltage. It is one of the simplest forms of modulation, and is widely used in a variety of applications, including remote control systems, wireless sensor networks, and optical communications.

The basic principle of OOK modulation is straightforward. In a binary data stream, each data bit is represented by a digital signal that is either on or off. In OOK modulation, the signal is transmitted by varying the amplitude of a carrier wave between two levels. When the carrier wave is present, the signal is in the "on" state, and when the carrier wave is absent, the signal is in the "off" state. The OOK modulation technique is used extensively in wireless communication systems. In a typical remote control system, for example, the user presses a button on a handheld remote control device, which generates a series of digital pulses. These pulses are then used to modulate a carrier wave, which is transmitted to the receiver unit in the target device. The receiver unit demodulates the signal, extracting the digital pulses, and uses them to control the device.

![gnd](https://github.com/sanampudig/CapNFC/assets/110079648/2145cdb4-508f-4ed0-9241-ab90ef10830b)

One of the key advantages of OOK modulation is its simplicity. The technique requires only a simple modulation circuit at the transmitter, and a demodulation circuit at the receiver. This makes it ideal for low-cost, low-power communication systems, such as those used in remote control and wireless sensor networks. Another advantage of OOK modulation is its flexibility. The technique can be used with a wide range of carrier frequencies and data rates, making it suitable for a variety of different applications. 

Despite its advantages, OOK modulation has some limitations. One of the main challenges with OOK modulation is noise. In noisy environments, the signal may become corrupted, leading to errors in the transmitted data. This can be addressed by using error correction codes, which can help to reduce the impact of noise on the transmitted signal.

### Universal Asynchronous Receiver-Transmitter

Universal Asynchronous Receiver-Transmitter, commonly abbreviated as UART, is a communication protocol used to transmit and receive serial data between two devices. It is a simple and widely used protocol that has been around for many years, and is still used in a variety of applications, including microcontrollers, sensors, and embedded systems.

The basic principle of UART communication is straightforward. In a serial data stream, each data bit is transmitted one at a time, in a specific order, typically starting with the least significant bit. The UART protocol defines the format of the data stream, including the number of data bits, the number of stop bits, and the parity bit. At the transmitter side, the UART takes parallel data from the device and converts it into a serial data stream. The data is transmitted bit-by-bit, starting with the least significant bit, and is sent one after the other. The UART also sends start and stop bits at the beginning and end of each byte to indicate the start and end of the transmission. At the receiver side, the UART receives the serial data stream, reconstructs the original parallel data, and sends it to the receiving device. The receiver detects the start and stop bits to determine when the transmission begins and ends. It also checks the parity bit to verify that the data has been received correctly.

One of the key advantages of UART communication is its simplicity. The UART protocol is easy to implement and does not require any complex hardware or software. This makes it ideal for low-cost, low-power devices, such as microcontrollers and sensors. Another advantage of UART communication is its flexibility. The UART protocol can be used with a wide range of data rates, from a few bits per second up to several megabits per second, depending on the application. It can also be used with different data formats, such as ASCII, binary, and hexadecimal.

Despite its advantages, UART communication also has some limitations. One of the main challenges with UART communication is that it is a point-to-point protocol, meaning that it can only be used to communicate between two devices. This means that it is not suitable for communication between multiple devices or for networking applications. Another limitation of UART communication is its susceptibility to noise and interference. Because the data is transmitted using a single wire, any noise or interference can corrupt the data, leading to errors in the received data. 

### Transimpedance Amplifier (TIA)

A trans-impedance amplifier (TIA) is a device used in electronics to convert a current signal into a voltage signal. It is commonly used in communication systems and sensor applications to detect and amplify small current signals. The basic principle of a transimpedance amplifier is that it uses a feedback loop to convert the current signal into a voltage signal. The input of the amplifier is connected to a photodiode or other current source, and the output of the amplifier is connected to a load or other circuitry. As the input current flows through the feedback loop, it generates a voltage across the feedback resistor. This voltage is amplified and fed back into the input of the amplifier, which generates a larger voltage output. The amount of gain provided by the amplifier is determined by the feedback resistor and the gain of the amplifier itself.

The key advantage of a transimpedance amplifier is that it can convert small current signals into larger voltage signals, which can be more easily processed by other circuits or systems. This makes it ideal for use in CapNFC where small current signals need to be detected and amplified.

### Low Pass Filter (LPF)

A low pass filter (LPF) is an electronic circuit that allows signals below a certain cutoff frequency to pass through while attenuating or blocking signals above that frequency. LPFs are used in a variety of applications, including audio processing, communication systems, and power electronics.

The basic design of a low pass filter consists of a resistor and capacitor connected in series or parallel. This forms a filter network that allows low-frequency signals to pass through while blocking or attenuating high-frequency signals. The cutoff frequency of the filter is determined by the values of the resistor and capacitor, and can be calculated using the formula: f_c = 1 / (2πRC)

Where fc is the cutoff frequency in Hertz, R is the resistance in ohms, and C is the capacitance in farads.

Low pass filters can be designed using various types of filter circuits, including passive and active filters. Passive filters are made up of resistors, capacitors, and inductors, while active filters use active components such as operational amplifiers (op-amps) to achieve greater control over the filter response.

Low pass filters are also commonly used in communication systems, such as radio receivers and transmitters. In these systems, LPFs are used to prevent unwanted signals from interfering with the desired signal. For example, in a CapNFC, an LPF is used to block out high-frequency noise, while allowing the desired signal to pass through. Its cutoff frequency is approximately equal to half of ADC sampling frequency to avoid \textbf{aliasing effect}.

### Analog-to-Digital Converter (ADC)

An Analog-to-Digital Converter (ADC) is an essential component of modern electronic systems, allowing analog signals to be converted into digital signals for processing and storage. ADCs are used in a variety of applications, including industrial automation, medical instrumentation, audio and video processing, and telecommunications.

The process of converting analog signals to digital signals involves two main steps: sampling and quantization. During the sampling process, the analog signal is measured at regular intervals, and the resulting samples are represented as discrete values. These values are then quantized into a digital format, in which the continuous analog signal is represented as a series of binary values.

ADCs can be categorized based on their architecture, with the most common types including successive approximation ADCs, delta-sigma ADCs, and pipeline ADCs. Successive approximation ADCs work by iteratively comparing the input voltage to a reference voltage and adjusting the binary code until the best match is achieved. Delta-sigma ADCs use oversampling to increase the resolution of the converter, and then apply digital filtering to reduce noise and distortion. Pipeline ADCs use a series of sub-ADCs to convert the signal in parallel, allowing for high speed and high resolution.

### CYPRESS CY8CKIT-149 PSoC 4100S PLUS Prototyping kit
The CYPRESS CY8CKIT-149 PSoC 4100S PLUS Prototyping kit is a development platform that enables engineers and designers to quickly prototype and develop embedded systems based on the PSoC 4100S Plus microcontroller. The PSoC 4100S Plus is a low-power ARM Cortex-M0+ based microcontroller that is optimized for use in IoT applications. It features an onboard debugger and programmer, allowing developers to quickly download and debug their code. One of the key features of the PSoC 4100S Plus microcontroller is its programmable analog and digital blocks, which allow designers to create custom peripherals and interfaces. The PSoC Creator Integrated Development Environment (IDE) provides a graphical interface for configuring and programming these blocks, enabling developers to quickly create custom functionality without the need for additional hardware. It also includes a range of communication interfaces, including I2C, SPI, UART, and USB. These interfaces enable the microcontroller to communicate with a wide range of external devices, such as sensors, actuators, and other microcontrollers. The microcontroller includes a range of power-saving features, such as dynamic voltage scaling and deep sleep modes, enabling designers to create battery-powered devices that can operate for extended periods of time on a single charge.


## Implementation

In this section, we provide a detailed overview of the implementation details for the project. The overall block diagram of the project is shown in Figure, which provides an overview of the various components and how they interact with each other.
![bd](https://github.com/sanampudig/CapNFC/assets/110079648/cdd2bc26-ee63-4ced-862a-e3bfe9ea0b95)

To get started with the project, the first step is to create a PSoC 5(CY8C5868LTI-LP039) project in PSoC Creator. This can be done by selecting "New Project" from the File menu, and then selecting "PSoC 5" as the target device. Once the project is created, the next step is to create the top design for the transmitter circuit.

![topdesign](https://github.com/sanampudig/CapNFC/assets/110079648/d2f332f8-0c65-4438-83ee-be058da69f47)

The top design for the transmitter circuit is shown in Figure~\ref{fig:topdesign}, which provides an overview of the various components and how they are connected. The first component is the UART module. Data transmission in CapNFC happens in serial, and this is why we need the UART module. This component properly encodes the data and prepares it for transmission. As mentioned in the background section, the UART protocol has a default value of "1", that's why it's start bit is low. However, in the case of CapNFC, the default value is "0", which means that we are visually unable to notice the start bit if it is encoded in the standard UART protocol. To solve this problem, we are inverting the UART protocol to make it an inverse UART protocol, where the start bit is "1" and the stop bit is "0". However, it is worth noting that we can still use the standard UART protocol as it also works. 

![ook](https://github.com/sanampudig/CapNFC/assets/110079648/56136dd5-6d5b-407d-910a-d26ea1f41c82)

The basic structure of OOK, as shown in Figure~\ref{ook}, is a crucial component in the transmission of data in the CapNFC system. When the transmitter needs to transmit a data bit of "1", it sends a fixed number of train of pulses, and when transmitting a data bit of "0", it sends a flat zero for the same duration. To implement this kind of structure, the Mux component is used in the transmitter circuit. Depending on the data at the selection line, the Mux component will either send a flat zero or a train of pulses. This ensures that the transmitted data is properly encoded and is sent in a manner that is consistent with the OOK protocol.

In this specific design, to transmit data bit of "1", the transmitter sends 10 pulses, which ensures that the receiving end can detect and interpret the data correctly. Similarly, to transmit a data bit of "0", the transmitter sends a flat zero for the same duration. This design ensures that the transmitted data is consistent with the OOK protocol and is correctly interpreted by the receiving end. To ensure that exactly 10 pulses are sent during the "ON" period, the frequency of the clock used in the system should be set to 10 times the baud rate of the UART. Firmware code to do that is given bellow.

```
#include "project.h"
int main(void)
{
    CyGlobalIntEnable;
    UART_1_Start();
    uint8 t data=0x55;
    for (;;)
    {
        UART_1_PutChar(data) ;
        CyDelay (30) ;
    }
}
```

The output of this Transmitter circuit is connected to the Transmitter electrode, which is then used to transmit the data wirelessly to the Receiver electrode. The Transmitter and Receiver electrodes are shown in Figure~\ref{fig:electrodes}. The dimensions of the electrodes are crucial for effective transmission and reception, and this is discussed in detail in the background section. In this particular design, we are using electrodes with dimensions of 5cm x 5cm to achieve the desired transmission range and signal strength.

![electrodes](https://github.com/sanampudig/CapNFC/assets/110079648/5cbfcce5-08a4-4607-8947-d98eda2ab25e)


Transmitter and Receiver electrodes used in this design is made using a copper sheet. However, to prevent any short circuits or other electrical issues, the copper sheet is covered with insulation tape. This ensures that the Transmitter circuit is not affected by any interference or electrical noise that could potentially impact the transmission of data. Additionally, the use of insulation tape also helps to improve the durability of the electrode, preventing any damage to the copper sheet due to external factors such as moisture, dust or physical damage. 

![setup](https://github.com/sanampudig/CapNFC/assets/110079648/46d212c3-5b75-4b8a-8f59-92452829f74e)


Entire project setup is shown in figure~\ref{setup}.To effectively decode the data transmitted wirelessly through the Transmitter and Receiver electrodes, we can implement a Receiver circuit. This Receiver circuit comprises a Low Pass Filter, followed by a Transimpedance Amplifier. The Low Pass Filter helps to remove any high-frequency noise that may be present in the received signal, while the Transimpedance Amplifier converts the induced current to voltage, which can then be processed further. The output voltage from the Receiver electrode is in analog form, and to effectively analyze and interpret the data, we can convert this analog signal to digital form using an Analog-to-Digital Converter (ADC). The ADC helps to convert the analog signal to a digital form that can be analyzed and processed more effectively. Once the signal has been converted to digital form, it can then be transmitted to a PC through a UART connection. This allows for easy analysis and interpretation of the data.

Alternatively we can extract data from CRO in CSV format and post process it in matlab to decode data. MATLAB algorithm used to decode data from is shown below.

```
csv_data=readtable("DSO00007.CSV");
time=csv_data.Var1;
tx_data_cro=csv_data.Var2;
rx_data_cro=csv_data.Var3;
figure
plot(time,rx_data_cro)
xlabel("Time (Sec)")
ylabel("Voltage (V)")
title("Displayed receiver data on CRO")
l=length(rx_data_cro);
digital_data=0;
for i=1:1:l
    if(rx_data_cro(i)>0.5)
        digital_data(i)=1;
    else
        digital_data(i)=0;
    end
end
figure
plot(time,digital_data)
xlabel("Time (Sec)")
ylabel("Voltage (V)")
title("Digital receiver data")
for i=1:1:l
if(digital_data(i)==0 && digital_data(i+1)==1)
    posedge=i+1;
    break
end
end
k=1;
t=0;
rx_data_envelope=0;
j=0;
for j=posedge+32:42:l
 rx_data_envelope(k)=digital_data(j);
 t(k)=time(j);
 k=k+1;
end
figure
plot(t,rx_data_envelope)
xlabel("Time (Sec)")
ylabel("Voltage (V)")
title("Receiver data (decoded OOK)")
jump=15;
rx_data=0;
for pos=1:8
rx_data(pos)=~rx_data_envelope(jump);
jump=jump+10;
end
message=0;
for n=1:8
message=message+(rx_data(n)*(2^(n-1)));
end
decodedmessage=dec2hex(message)
```
Extract displayed data of transmitted and received waveforms from CRO (keeping CRO settings constant i.e., time scale (X-axis) fixed to 1ms and voltage scale (Y-axis) fixed to 1V to keep sampling frequency same for all the experiments) in .CSV format. Import this .CSV file in MATLAB. For decoding received data, first convert the received data to digital by mapping the values greater than 0.5 Volts (threshold value) to “1” and otherwise “0”. The data is in OOK modulated form and it is demodulated by envelope detection. To generate envelope, sample the data at a interval of sum of number of samples for each “1” and “0”.  The data in UART form is decoded and finally we obtain the original message. 

## Experimental Results
To verify the correctness of our Nearfield Capacitive Communication Transceiver design, we conducted various tests to ensure that the system was transmitting and receiving data accurately. One of the tests involved transmitting different data encoded as OOK modulated waves and observing the received signals using an oscilloscope.

To perform the test, we first connected the transmitter and receiver electrodes to the appropriate terminals on the CRO. We then transmitted several different data patterns and observed the received signals using the CRO. By examining the received signals, we were able to confirm that the transmitted data was being correctly received and decoded by the receiver. Diffarent data patterns are shown in ~\ref{ook1} and ~\ref{ook2}

![ook1](https://github.com/sanampudig/CapNFC/assets/110079648/8f0c8150-0ce4-4a6f-a25d-b1ba84a4e7c3)

```
data: 0x35
Binary: MSB(0011-0101)LSB
Rearranged: LSB(1010-1100)MSB
Inverted:LSB(0101-0011)MSB
Data Transmitted: Start(1)-Data[LSB(0101-0011)MSB]-Stop(0)

```
![ook2](https://github.com/sanampudig/CapNFC/assets/110079648/b6556138-da91-4b30-941b-f1fae929fc2a)

```
data: 0x47
Binary: MSB(0100-0111)LSB
Rearranged: LSB(1110-0010)MSB
Inverted:LSB(0001-1101)MSB
Data Transmitted: Start(1)-Data[LSB(0001-1101)MSB]-Stop(0)
```
In addition to this OOK test, we also conducted other tests, such as varying the distance between the transmitter and receiver electrodes and changing the transmitting frequency, to evaluate the robustness of our design. These tests helped us identify any potential issues with the system and allowed us to make necessary adjustments to improve its performance.

![wt](https://github.com/sanampudig/CapNFC/assets/110079648/a76e1b1a-ca3f-4687-ae98-5455c9009911)


A visual representation of the transmitted signal is shown in Figure~\ref{wt}, where the modulated OOK signal is clearly visible. However, in the absence of a receiver or with the receiver being too far away, no signal will be detected at the receiver end. This scenario is depicted in Figure~\ref{wt}, where no signal is observed at the receiver end due to the distance between the transmitter and receiver electrodes. This highlights the importance of maintaining a close proximity between the electrodes to ensure reliable communication using the Nearfield Capacitive Communication Transceiver.

![t](https://github.com/sanampudig/CapNFC/assets/110079648/1a5ac68c-3b68-4449-8df5-30694027a7e0)


When the transmitter and receiver electrodes are in contact, the received signal closely follows the transmitted signal as shown in Figure~\ref{wt}. This is because the proximity between the electrodes allows for strong coupling between them, resulting in a high level of induced current in the receiver electrode. The received signal faithfully represents the transmitted data, allowing for accurate decoding of the message.

![matrec](https://github.com/sanampudig/CapNFC/assets/110079648/63e38fa4-3f69-4d5f-8e34-5859ee1ec880)

The receiver signal is converted to a Comma-Separated Values (CSV) file format, which is a widely used format for storing tabular data. Once the receiver signal is in the CSV format, it can be easily imported into MATLAB for analysis and visualization. MATLAB provides a wide range of tools for signal processing, data analysis, and visualization. With these tools, we can easily analyze the characteristics of the received signal. The receiver signal MATLAB plot is shown in figure~\ref{matrec}.

![decoded](https://github.com/sanampudig/CapNFC/assets/110079648/36ce934c-65e7-4c1a-b007-37c7631a16ee)


The figure~\ref{decoded} displays the decoded data of Example 2 through a custom MATLAB algorithm. The decoded data is plotted in the form of a graph, which shows the transmission of binary data using OOK modulation and the subsequent reception of the same data through a receiver electrode. The x-axis represents the time in seconds, while the y-axis shows the amplitude of the signal. The decoded data is clearly visible as a series of square waveforms, which correspond to the transmitted binary data. The MATLAB algorithm effectively converts the analog signal received from the receiver electrode into digital data, which can be analyzed and processed further. 

Overall, by conducting various tests and validating our design, we ensured that our Nearfield Capacitive Communication Transceiver using PSoC 5 was a reliable and efficient solution for short-range wireless communication. 

## Conclusion

In conclusion, the Near Field Capacitive Communication Transceiver using PSoC 5 is an innovative solution for wireless communication that offers several advantages over existing wireless communication techniques. The project involves designing and implementing the hardware and software required for this transceiver, and it will be validated through simulations and testing. The design files for this innovative solution are freely available for use by the research and designer communities, facilitating the development of new and exciting applications. With CapNFC, the possibilities for short-range wireless communication are endless!


## Contributors 

- **Sanampudi Gopala Krishna Reddy** 
 Postgraduate Student, International Institute of Information Technology, Bangalore  svgkr7@gmail.com


## 14. References

- [1] H. Ishii and B. Ullmer, “Tangible bits: Towards seamless interfaces between people, bits and atoms,” in Proceedings of the ACM SIGCH Conference on Human Factors in Computing Systems, ser. CHI ’97. New York, NY, USA: Association for Computing Machinery, 1997, p.234–241. [Online]. Available: https://doi.org/10.1145/258549.25871
- [2] T. G. Zimmerman, “Personal area networks: Near-field intrabody com- munication,” IBM Syst. J., vol. 35, pp. 609–617, 1996.
- [3] T. Vu and M. Gruteser, “Personal touch-identification tokens,” IEEE Pervasive Computing, vol. 12, no. 2, pp. 10–13, Apr. 2013.
- [4] N.-H. Yu, L.-W. Chan, S.-Y. Lau, S.-S. Tsai, I.-C. Hsiao, D.-J. Tsai, F.-I. Hsiao, L.-P. Cheng, M. Chen, P. Huang, and Y.-P. Hung, “Tuic: Enabling tangible interaction on capacitive multi-touch display,” 05 2011, pp. 2995–
3004.
- [5] M. I. o. T. . Smith, J. R. Electric Field Imaging. PhD thesis.
- [6] T. Zimmerman, J. Smith, J. Paradiso, D. Allport, and N. Gershenfeld, “Applying electric field sensing to human-computer interfaces,” 08 1995.
- [7] T. Grosse-Puppendahl, S. Herber, R. Wimmer, F. Englert, S. Beck, J. von Wilmsdorff, R. Wichert, and A. Kuijper, “Capacitive near-field communication for ubiquitous interaction and perception,” 09 2014.
- [8] https://shorturl.at/kzOVW.
- [9] T. Grosse-Puppendahl, Y. Berghoefer, A. Braun, R. Wimmer, and A. Kuijper, “Opencapsense: A rapid prototyping toolkit for pervasive interaction using capacitive sensing,” vol. 18, 03 2013, p. 22.



