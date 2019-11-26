class Alimentos
	include Comparable
		attr_reader :nombre, :gases, :terreno, :prot, :carbo, :lip, :val_en
		attr_writer :gases, :terreno, :prot, :carbo, :lip
	def initialize (nombre,prot,carbo,lip,gei,terr)
		@nombre = nombre
		@prot = prot
		@carbo = carbo
		@lip = lip
		@gases = gei
		@terreno = terr
	end
	def to_s
		"(#{nombre},#{prot},#{carbo},#{lip},#{gases},#{terreno})"
	end
	def val_en
		kcalc = carbo * 4
		kcalp = prot * 4
		kcall = lip * 9
		@val_en = (kcalc + kcalp + kcall).round(1)
	
	end
	def hombre(prot1,prot2,prot3,terr1,terr2,terr3,gas1,gas2,gas3)
		if (prot1 + prot2 + prot3) >= 54
        	        prot_max = prot1 + prot2 + prot3
			gases = terr1 + terr2 + terr3
			terreno = gas1+ gas2+ gas3

		end
		"(#{prot_max},#{gases},#{terreno})"
	end
	def mujer(prot1,prot2,prot3,terr1,terr2,terr3,gas1,gas2,gas3)
		if (prot1 + prot2 + prot3) >= 41
	    		prot_max = prot1 + prot2 + prot3
			gases = terr1 + terr2 + terr3
			terreno = gas1+ gas2+ gas3

		end
		"(#{prot_max},#{gases},#{terreno})"
	end
	def <=>(other)
		val_en <=> other.val_en
	end
end
