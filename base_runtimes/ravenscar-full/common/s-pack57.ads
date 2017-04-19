------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--                       S Y S T E M . P A C K _ 5 7                        --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--          Copyright (C) 1992-2014, Free Software Foundation, Inc.         --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.                                     --
--                                                                          --
-- You should have received a copy of the GNU General Public License along  --
-- with this library; see the file COPYING3. If not, see:                   --
-- <http://www.gnu.org/licenses/>.                                          --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

--  Handling of packed arrays with Component_Size = 57

package System.Pack_57 is
   pragma Preelaborate;

   Bits : constant := 57;

   type Bits_57 is mod 2 ** Bits;
   for Bits_57'Size use Bits;

   --  In all subprograms below, Rev_SSO is set True if the array has the
   --  non-default scalar storage order.

   function Get_57
     (Arr     : System.Address;
      N       : Natural;
      Rev_SSO : Boolean) return Bits_57 with Inline;
   --  Arr is the address of the packed array, N is the zero-based
   --  subscript. This element is extracted and returned.

   procedure Set_57
     (Arr     : System.Address;
      N       : Natural;
      E       : Bits_57;
      Rev_SSO : Boolean) with Inline;
   --  Arr is the address of the packed array, N is the zero-based
   --  subscript. This element is set to the given value.

end System.Pack_57;