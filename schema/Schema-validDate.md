# validDate

A filter excluding invalid dates (e.g. `new Date("fail")`).

To import and use `validDate` from the "Schema" module:

```ts
import * as Schema from '@effect/schema/Schema'

// Can be accessed like this
Schema.validDate
```

**Signature**

```ts
export declare const validDate: (options?: AnnotationOptions<Date>) => <I>(self: Schema<I, Date>) => Schema<I, Date>
```