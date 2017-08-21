package sample1

import (
	"fmt"
	"net/http"
	"google.golang.org/appengine/log"
	"time"
	"github.com/patrickmn/go-cache"
	"golang.org/x/net/context"
)

var c = cache.New(1*time.Minute, 2*time.Minute)

func RequestHandler(w http.ResponseWriter, r *http.Request, ctx context.Context) {
	log.Infof(ctx, "request url: " + r.URL.String())
	c.Set("key", "200", cache.DefaultExpiration)
	result, _ := c.Get("key")
	fmt.Fprint(w, result)
}