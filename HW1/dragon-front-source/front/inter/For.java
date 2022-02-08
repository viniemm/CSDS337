package inter;

import symbols.*;

public class For extends Stmt {

	Stmt initiation;
	Expr condition;
	Stmt increment;
	Stmt body;

	public For() {
		initiation = null;
		condition = null;
		increment = null;
		body = null;
	}

	public void init(Stmt initiation, Expr condition, Stmt increment, Stmt body) {
		this.initiation = initiation;
		this.condition = condition;
		this.increment = increment;
		this.body = body;
		if (this.condition.type != Type.Bool) this.condition.error("boolean required in for");
	}

	public void gen(int b, int a) {
		after = a;                // save label a
		condition.jumping(0, a);
		int label = newlabel();   // label for stmt
		emitlabel(label);
		increment.gen(label, b);
		body.gen(label, b);
		emit("goto L" + b);
	}
}
