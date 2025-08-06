<tr>
    <td>${emp.id}</td>
    <td>${emp.name}</td>
    <td>${emp.designation}</td>
    <td>${emp.salary}</td>
    <td>
        <a href="update/${emp.id}">Update</a> |
        <a href="delete/${emp.id}" onclick="return confirm('Are you sure?')">Delete</a>
    </td>
</tr>
