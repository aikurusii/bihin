package dto;

public class Bihin {
	private int id;
	private String name;
	private int kazu;
	
	public Bihin(int id,String name,int kazu) {
		super();
		this.id=id;
		this.name=name;
		this.kazu=kazu;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getKazu() {
		return kazu;
	}

	public void setKazu(int kazu) {
		this.kazu = kazu;
	}
	
}
