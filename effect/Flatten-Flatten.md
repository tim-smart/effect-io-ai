# Flatten

Because certain documents do not change after removal of newlines, etc, there
is no point in creating a `Union` of the flattened and unflattened versions.
All this leads to is the introduction of two possible branches for a layout
algorithm to take, resulting in potentially exponential behavior on deeply
nested examples.

To import and use `Flatten` from the "Flatten" module:

```ts
import * as Flatten from "@effect/printer/Flatten"
// Can be accessed like this
Flatten.Flatten
```
