fifo_inst : fifo PORT MAP (
		clock	 => clock_sig,
		data	 => data_sig,
		rdreq	 => rdreq_sig,
		wrreq	 => wrreq_sig,
		q	 => q_sig,
		usedw	 => usedw_sig
	);
