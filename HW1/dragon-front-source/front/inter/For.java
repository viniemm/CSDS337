package inter;

import symbols.*;

public class For extends Stmt {

	Expr initiation;
	Expr condition;
	Expr increment;
	Stmt body;

	public For() {
		initiation = null;
		condition = null;
		increment = null;
		body = null;
	}

	public void init(Expr initiation, Expr condition, Expr increment,Stmt body) {
		this.initiation = initiation;
		this.condition = condition;
		this.increment = increment;
		this.body = body;
		if (this.condition.type != Type.Bool) this.condition.error("boolean required in for");
	}

	public void gen(int b, int a) {
		after = a;                // save label a
		expr.jumping(0, a);
		int label = newlabel();   // label for stmt
		emitlabel(label);
		stmt.gen(label, b);
		emit("goto L" + b);
	}
}
