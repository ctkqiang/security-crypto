from qiskit import IBMQ
from qiskit.aqua import QuantumInstance
from qiskit.aqua.algorithms import Shor

def main():
    def tadaa(string):
        print(string)
    
    def incoming(string):
        input(string)

    API = "26f2e1b4b40ea8d23675f7c644437f38a7b16ba89d09963345b4549c37763401e9a00aa81041e9d3f560c71cb24c1d02a6c142f2cac3d6fa668f786c0e467e49"
    IBMQ.enable_account(API)
    provider = IBMQ.get_provider(hub="ibm-q")
    backend = provider.get_backend("ibmq_qasm_simulator")
    tadaa("\n Shor Algorithm")
    tadaa("\n --------------")
    tadaa("\n Executing.....")
    factors = Shor(21)
    result_dict = factors.run(QuantumInstance(backend, shots=1, skip_qobj_validation=False))
    result = result_dict['factors'] # Get factors from results
    tadaa(result)
    tadaa("\n Press any ket to close.")
    incoming()

if __name__ == "__main__":
    main()