namespace Tensor;

use IteratorAggregate;
use ArrayAccess;
use Countable;

interface ArrayLike extends ArrayAccess, IteratorAggregate, Countable
{
    /**
     * Return a tuple with the dimensionality of the array-like.
     *
     * @return int[]
     */
    public function shape() -> array;

    /**
     * Return the shape of the tensor as a string.
     *
     * @return string
     */
     public function shapeString() -> string;

    /**
     * Return the number of elements in the array-like object.
     *
     * @return int
     */
    public function size() -> int;

    /**
     * Map a function over all of the elements in the tensor.
     *
     * @param callable callback
     * @return mixed
     */
     public function map(const callback);

     /**
      * Reduce the tensor down to a scalar.
      *
      * @param callable callback
      * @param mixed initial
      * @return mixed
      */
     public function reduce(const callback, const initial = 0);

    /**
     * Return the elements of the array-like as a PHP array.
     *
     * @return array
     */
    public function asArray() -> array;
}
