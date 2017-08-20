package sample1

import (
	"fmt"
	"net/http"
	"appengine"
	"time"
	"github.com/patrickmn/go-cache"
)

var c = cache.New(1*time.Minute, 2*time.Minute)

func RequestHandler(w http.ResponseWriter, r *http.Request, ctx appengine.Context) {
	ctx.Infof("request url: " + r.URL.String())
	c.Set("key", "200", cache.DefaultExpiration)
	result, _ := c.Get("key")
	fmt.Fprint(w, result)
}