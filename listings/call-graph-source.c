int larry(int fish) {
  if (fish) {
    moe(1);
  } else {
    curly();
  }
}

int moe(int scissors) {
  if (scissors) {
    curly();
    moe(0);
  } else {
    curly();
  }
}

int curly() {
  /* empty */
}
