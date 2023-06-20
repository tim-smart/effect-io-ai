# Case

`Case` represents a datatype similar to a case class in Scala. Namely, a
datatype created using `Case` will, by default, provide an implementation
for a constructor, `Hash`, and `Equal`.

To import and use `Case` from the "Data" module:

```ts
import * as Data from '@effect/data/Data'

// Can be accessed like this
Data.Case
```
