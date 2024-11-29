# Class

A base class used for creating domain model schemas.

It supports common variants for database and JSON apis.

To import and use `Class` from the "Model" module:

ts
import \* as Model from "@effect/sql/Model"
// Can be accessed like this
Model.Class
undefined

**Example**

```ts
import { Schema } from "effect"
import { Model } from "@effect/sql"

export const GroupId = Schema.Number.pipe(Schema.brand("GroupId"))

export class Group extends Model.Class<Group>("Group")({
  id: Model.Generated(GroupId),
  name: Schema.NonEmptyTrimmedString,
  createdAt: Model.DateTimeInsertFromDate,
  updatedAt: Model.DateTimeUpdateFromDate
}) {}

// schema used for selects
Group

// schema used for inserts
Group.insert

// schema used for updates
Group.update

// schema used for json api
Group.json
Group.jsonCreate
Group.jsonUpdate

// you can also turn them into classes
class GroupJson extends Schema.Class<GroupJson>("GroupJson")(Group.json) {
  get upperName() {
    return this.name.toUpperCase()
  }
}
```
