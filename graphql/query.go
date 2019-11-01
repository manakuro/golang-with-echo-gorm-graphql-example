package graphql

import (
	"golang-with-echo-gorm-graphql-example/graphql/field"

	"github.com/jinzhu/gorm"

	"github.com/graphql-go/graphql"
)

func newQuery(db *gorm.DB) *graphql.Object {
	return graphql.NewObject(graphql.ObjectConfig{
		Name: "Query",
		Fields: graphql.Fields{
			"users": field.NewUsers(db),
		},
	})
}
