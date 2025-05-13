import pyrtl
from sys import argv


if __name__ == "__main__":
    if argv[1] == "1":
        import ucsbcs154lab6_1bitpred
    if argv[1] == "2":
        import ucsbcs154lab6_2bitpred
    if argv[1] == "3":
        import ucsbcs154lab6_predtable

    sim_trace = pyrtl.SimulationTrace()
    sim = pyrtl.Simulation(tracer=sim_trace)
    pcPrevious = 0
    branchTakenPrevious = 0
    isBranchPrevious = 0
    predictionPrevious = 0
    count = 0
    correct = 0
    f = open(argv[2], "r")  # Edit this line to change the trace file you read from
    for iteration,line in enumerate(f): # Read through each line in the file
        pcCurrent = int(line[0:line.find(':')],0) # parse out current pc
        branchTakenCurrent = int(line[12]) # parse out branch taken
        isBranchCurrent = int(line[16]) # parse if the current instr is a branch

        sim.step({ # Feed in input values
            'fetch_pc' : pcCurrent,
            'update_branch_pc' : pcPrevious,
            'update_prediction': isBranchPrevious,
            'update_branch_taken' : branchTakenPrevious
        })

        predictionCurrent = sim_trace.trace['pred_taken'][-1] # get the value of your prediction

        if isBranchPrevious: # check if previous instr was a branch
            if predictionPrevious == branchTakenPrevious: # if prediction was correct
                correct += 1
            count += 1


        # Update for next cycle
        pcPrevious = pcCurrent
        branchTakenPrevious = branchTakenCurrent
        isBranchPrevious = isBranchCurrent
        predictionPrevious = predictionCurrent

    # one final check
    if isBranchPrevious:
        if predictionPrevious == branchTakenPrevious:
            correct += 1 # Correct prediction
        count += 1

    print("Accuracy = ", correct/count)
    sim_trace.render_trace()