package calc

import (
	"testing"
)

func TestSum(t *testing.T) {
	if Sum(1, 2) != 3 {
		t.Fatal("error")
	}
}
