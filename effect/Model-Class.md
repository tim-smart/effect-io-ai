Package: `@effect/sql`<br />
Module: `Model`<br />

## Model.Class

A base class used for creating domain model schemas.

It supports common variants for database and JSON apis.

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

**Signature**

```ts
declare const Class: <Self = never>(identifier: string) => <const Fields extends VariantSchema.Struct.Fields>(fields: Fields & VariantSchema.Struct.Validate<Fields, "insert" | "update" | "json" | "jsonCreate" | "jsonUpdate" | "select">, annotations?: Schema.Annotations.Schema<Self, readonly []> | undefined) => [Self] extends [never] ? "Missing `Self` generic - use `class Self extends Class<Self>()({ ... })`" : ClassFromFields<Self, Fields, VariantSchema.ExtractFields<"select", Fields, true>> & { readonly insert: Schema.Struct<{ [K in keyof VariantSchema.ExtractFields<"insert", Fields, false>]: VariantSchema.ExtractFields<"insert", Fields, false>[K]; }>; readonly update: Schema.Struct<{ [K in keyof VariantSchema.ExtractFields<"update", Fields, false>]: VariantSchema.ExtractFields<"update", Fields, false>[K]; }>; readonly json: Schema.Struct<{ [K in keyof VariantSchema.ExtractFields<"json", Fields, false>]: VariantSchema.ExtractFields<"json", Fields, false>[K]; }>; readonly jsonCreate: Schema.Struct<{ [K in keyof VariantSchema.ExtractFields<"jsonCreate", Fields, false>]: VariantSchema.ExtractFields<"jsonCreate", Fields, false>[K]; }>; readonly jsonUpdate: Schema.Struct<{ [K in keyof VariantSchema.ExtractFields<"jsonUpdate", Fields, false>]: VariantSchema.ExtractFields<"jsonUpdate", Fields, false>[K]; }>; readonly select: Schema.Struct<{ [K in keyof VariantSchema.ExtractFields<"select", Fields, false>]: VariantSchema.ExtractFields<"select", Fields, false>[K]; }>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/src/Model.ts#L116)

Since v1.0.0