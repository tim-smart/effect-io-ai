# DateTimeInsert

A field that represents a date-time value that is inserted as the current
`DateTime.Utc`. It is serialized as a string for the database.

It is omitted from updates and is available for selection.

To import and use `DateTimeInsert` from the "Model" module:

```ts
import * as Model from "@effect/sql/Model"
// Can be accessed like this
Model.DateTimeInsert
```

**Signature**

```ts
export declare const DateTimeInsert: DateTimeInsert
```
